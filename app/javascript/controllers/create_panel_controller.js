import { Controller } from "@hotwired/stimulus"
import {
  beginnersGuide,
  comparison,
  definition,
  factChecker,
  howTo,
  listicle,
  productReview,
  defaultPrompt
 } from '../shared/template_prompts'

class CreatePanelController extends Controller {
  static targets = [
    'templateSelect',
    'messageInput',
    'messageFeedback',
    'templateInfo',
    'templateMessage'
  ]

  updatePrompt() {
    this.messageFeedbackTarget.innerHTML = this.#promptTemplateFeedbck()
    this.setTemplatePrompt()
    this.#setTemplateMessage()
  }

  resetPrompt() {
    this.messageInputTarget.value = ''
  }

  setTemplatePrompt() {
    switch(this.templateSelectTarget.value) {
      case 'beginners_guide':
        this.#fillPrompt(beginnersGuide)
        break
      case 'comparison':
        this.#fillPrompt(comparison)
        break
      case 'definition':
        this.#fillPrompt(definition)
        break
      case 'fact_checker':
        this.#fillPrompt(factChecker)
        break
      case 'how_to':
        this.#fillPrompt(howTo)
        break
      case 'listicle':
        this.#fillPrompt(listicle)
        break
      case 'product_review':
        this.#fillPrompt(productReview)
        break
      default:
        this.#fillPrompt(defaultPrompt)
    }
  }

  resetTemplate() {
    this.templateSelectTarget.value = ''
    this.templateInfoTarget.innerHTML = ''
    this.templateMessageTarget.innerHTML = ''
    this.resetPrompt()
  }

  #promptTemplateFeedbck() {
    const select = this.templateSelectTarget

    return(`
      <div>
        <div data-create-panel-target="templateInfo">
          <span>Template: <strong>${select.options[select.selectedIndex].text}</strong></span>
          <span class="ms-2" data-action="click->create-panel#resetTemplate" style="cursor: pointer;">
            <i class="bi bi-x-square-fill text-danger">
              <span class="visually-hidden">
                Reset template
              </span>
            </i>
          </span>
        </div>
      </div>
    `)
  }

  #fillPrompt(templatePrompt) {
    this.messageInputTarget.value = templatePrompt
  }
  #setTemplateMessage() {
    const template = (`
      <div class="alert alert-warning d-flex align-items-center mt-4" role="alert">
        <i class="bi bi-exclamation-triangle-fill h3 pe-4"></i>
        <div>
          <strong>Please note:</strong> Our templated posts have been optimized to work best with specifcally formatted prompts. Please follow the prompt inputs for best results.
        </div>
      </div>
    `)

    this.templateMessageTarget.innerHTML = template
  }
}

export default CreatePanelController
