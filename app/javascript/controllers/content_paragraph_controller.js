import { Controller } from "@hotwired/stimulus"

class ContentParagraphController extends Controller {
  static targets = [
    'contentInput',
    'sourceSwitch'
  ]

  connect() {
    const resp = document.getElementsByName('post[content]')[0].textContent
    console.log(resp)
  }

  setContentSource() {
    if(this.sourceSwitchTarget.checked) {
      this.contentInputTarget.value = document.getElementsByName('post[content]')[0].textContent
    } else {
      this.contentInputTarget.value = ''
    }
  }
}
export default ContentParagraphController
