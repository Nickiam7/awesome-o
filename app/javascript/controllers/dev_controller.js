import { Controller } from "@hotwired/stimulus"

class DevController extends Controller {
  static targets = [
    'editor',
    'editButton'
  ]

  static values = {
    contentResponse: String
  }

  connect() {
    console.log('=======>', this.contentResponseValue)
  }

  trixEditor() {
    const editor = `
      <input id="x" value="<h2>Heloooo</h2>" type="hidden" name="content">
      <trix-editor input="x"></trix-editor>
    `

    this.editorTarget.innerHTML = editor
  }
}

export default DevController
