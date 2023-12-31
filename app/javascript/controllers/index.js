// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import AppController from "./app_controller"
application.register("app", AppController)

import PlaceholderController from "./placeholder_controller"
application.register("placeholder", PlaceholderController)

import CreatePanelController from "./create_panel_controller"
application.register("create-panel", CreatePanelController)

import PostToolsController from "./post_tools"
application.register("post-tools", PostToolsController)

import ContentParagraphController from "./content_paragraph_controller"
application.register("content-paragraph", ContentParagraphController)

import DevController from "./dev_controller"
application.register("dev", DevController)

import DragComponentController from "./drag_component_controller"
application.register("drag-component", DragComponentController)

import PostContentController from "./post_content_controller"
application.register("post-content", PostContentController)
