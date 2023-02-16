import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ["button", "link"]

  connect() {
    console.log("Hello batch 1154 from our first Stimulus controller");
  }

  disable() {
    console.log(event);
    this.buttonTarget.innerText = "Bingo!";
    this.buttonTarget.setAttribute("disabled", "");
    this.linkTarget.classList.remove("d-none");
  }

  reset() {
    console.log(event);
    this.buttonTarget.innerText = "Click me";
    this.buttonTarget.removeAttribute("disabled", "");
    this.linkTarget.classList.add("d-none");
  }
}