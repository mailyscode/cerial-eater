import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["dropdown", "arrow_opened", "arrow_closed"]

  toggle(event) {
    event.preventDefault()
    event.stopPropagation()
    this.dropdownTarget.classList.toggle("hidden")
    this.arrow_closedTarget.classList.toggle("hidden")
    this.arrow_openedTarget.classList.toggle("hidden")
  }
}
