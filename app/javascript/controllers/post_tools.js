import { Controller } from '@hotwired/stimulus'

class PostTools extends Controller {
  static targets = ['header', 'showHide']

  toggleVisibility() {
    this.headerTarget.classList.toggle('hide-tool')
    if (this.headerTarget.classList.contains('hide-tool')) {
      this.showHideTarget.innerHTML = `show <i class="bi bi-chevron-down"></i>`
    } else {
      this.showHideTarget.innerHTML = `hide <i class="bi bi-chevron-up"></i>`
    }
  }

}

export default PostTools
