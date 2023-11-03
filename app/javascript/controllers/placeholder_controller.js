import { Controller } from '@hotwired/stimulus'
import { awesomeO } from '../shared/placeholders'

class PlaceholderController extends Controller {
  static targets = [
    'results',
    'message',
    'form'
  ]

  showSkeleton() {
    this.resultsTarget.innerHTML = awesomeO
    this.messageTarget.classList.add('d-none')
  }

  showSpinner() {
    this.resultsTarget.innerHTML = this.#spinnerTemplate()
  }

  #spinnerTemplate() {
    return(`
      <div class="d-flex justify-content-center">
        <div id="spinner" class="spinner-border text-primary" role="status">
          <span class="visually-hidden">Loading...</span>
        </div>
      </div>

    `)
  }
}

export default PlaceholderController
