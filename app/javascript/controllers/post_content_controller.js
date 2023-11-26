import { Controller } from "@hotwired/stimulus"

class PostContentController extends Controller {
  static targets = ['hiddenField', 'postContent']

  postContent() {
    this.hiddenFieldTarget.value = this.postContentTarget.innerHTML
  }
}

export default PostContentController
