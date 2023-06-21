// import { Controller } from "@hotwired/stimulus"
// // BootstrapのModalをimport
// import { Modal } from "bootstrap"

// // Connects to data-controller="modal"
// export default class extends Controller {
//   connect() {
//       // モーダル生成
//       this.modal = new Modal(this.element)
//       console.log(this.modal)

//       // モーダルを表示する
//       this.modal.show()
//   }

//    // アクション定義
//   // 保存成功時にモーダルを閉じる
//   close(event) {
//     console.log(event.detail.success) 
//     // event.detail.successは、レスポンスが成功ならtrueを返す
//     // バリデーションエラー時はモーダルを閉じたくないので、成功時のみ閉じる
//     if (event.detail.success) {
//       // モーダルを閉じる
//       this.modal.hide()
//     }
//   }
// }
