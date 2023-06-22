// // Import and register all your controllers from the importmap under controllers/*

// import { application } from "./application"

// // Eager load all controllers defined in the import map under controllers/**/*_controller
// import * as controllers from "./index"

// import "./modal_controller"


// for (const name in controllers) {
//   application.register(name, controllers[name])
// }


// // Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// // import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// // lazyLoadControllersFrom("controllers", application)

import { Application } from "@hotwired/stimulus"
import 'bootstrap'

const app = Application.start()

import HelloController from "./hello_controller.js"
app.register("hello", HelloController)

import ModalController from "./modal_controller.js"
app.register("modal", ModalController)

import CounterController from "./counter_controller.js"
app.register("counter", CounterController)