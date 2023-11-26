import { Controller } from "@hotwired/stimulus"

class ContentParagraphController extends Controller {
  static targets = [
    'contentInput',
    'sourceSwitch'
  ]

  connect() {
    document.getElementById('postContent').textContent
  }

  setContentSource() {
    if(this.sourceSwitchTarget.checked) {
      this.contentInputTarget.value = document.getElementById('postContent').textContent
    } else {
      this.contentInputTarget.value = ''
    }
  }
}
export default ContentParagraphController
