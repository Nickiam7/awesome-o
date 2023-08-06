import { Controller } from "@hotwired/stimulus"

class AppController extends Controller {
  static targets = [
    'range',
    'tempValueInput'
  ]

  connect() {
    this.setRangeValue()
  }

  setRangeValue() {
    this.tempValueInputTarget.value = this.rangeTarget.value
  }
}

export default AppController
