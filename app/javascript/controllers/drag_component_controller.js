import { Controller } from "@hotwired/stimulus"

class DragComponentController extends Controller {
  static targets = ['dragItem']

  dragstart_handler(event) {
    console.log("dragStart")
    event.currentTarget.style.border = "dashed"
    event.dataTransfer.setData("text", event.target.id)
    event.effectAllowed = "copyMove"
  }

  dragover_handler(event) {
    console.log("dragOver");
    event.preventDefault();
  }

  drop_handler(event) {
    console.log("Drop");
    event.preventDefault();
    var id = event.dataTransfer.getData("text");
    event.target.appendChild(document.getElementById(id));
  }

  dragend_handler(event) {
    console.log("dragEnd");
  }
}

export default DragComponentController
