import { Controller } from '@hotwired/stimulus'
import { resultsPlaceholder } from '../shared/placeholders'

class PlaceholderController extends Controller {
  static targets = ['results', 'message']

  showSkeleton() {
    this.resultsTarget.innerHTML = resultsPlaceholder
    this.messageTarget.classList.add('d-none')
  }
}

export default PlaceholderController
