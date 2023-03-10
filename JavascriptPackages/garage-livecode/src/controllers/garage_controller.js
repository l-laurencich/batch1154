import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["carsList"]

  connect() {
    console.log("hello from garage controller!")
    this.garageName = "supercars"
    this.garageUrl = `https://wagon-garage-api.herokuapp.com/${this.garageName}/cars`
    this.refreshCars()
  }

  createCar(event) {
    event.preventDefault();
    const formData = new FormData(event.currentTarget)
    const myNewCar = Object.fromEntries(formData)
    fetch(this.garageUrl, {
      method: "POST",
      headers: {"Content-Type": "application/json"},
      body: JSON.stringify(myNewCar)
    })
    .then (() => this.refreshCars())
    event.currentTarget.reset()
  }

  refreshCars() {
    fetch(this.garageUrl)
    .then(response => response.json())
    .then((data) => {
      console.log(data)
      this.carsListTarget.innerHTML = ""
      data.forEach(car => this.insertCarCard(car)) 
    });
  }

  insertCarCard(car) {
    const carCard = `<div class="car">
          <div class="car-image">
            <img src="http://loremflickr.com/280/280/${car.brand} ${car.model}" />
          </div>
          <div class="car-info">
            <h4>${car.brand} - ${car.model}</h4>
            <p><strong>Owner:</strong> ${car.owner}</p>
            <p><strong>Plate:</strong> ${car.plate}</p>
          </div>
        </div>`

    this.carsListTarget.insertAdjacentHTML("beforeend", carCard)
  }

}
