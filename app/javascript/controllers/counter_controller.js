import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "count" ]

  connect() {
    this.countTarget.value = 0;
  }

  increment() {
    this.countTarget.value = parseInt(this.countTarget.value) + 1;
  }

  decrement() {
    if (this.countTarget.value > 0) {
      this.countTarget.value = parseInt(this.countTarget.value) - 1;
    }
  }

  changeCount() {
    this.countTarget.value = parseInt(this.countTarget.value);
  }
}
