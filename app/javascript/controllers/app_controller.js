import { Controller } from "@hotwired/stimulus"
import { Tooltip } from "bootstrap"

class AppController extends Controller {
  static targets = [
    'range',
    'tempValueInput'
  ]

  connect() {
    this.setRangeValue()
    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');

    [...tooltipTriggerList].map(tooltipTriggerEl => new Tooltip(tooltipTriggerEl))
  }

  setRangeValue() {
    this.tempValueInputTarget.value = this.rangeTarget.value
  }
}

export default AppController
