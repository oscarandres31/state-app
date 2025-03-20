import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"
export default class extends Controller {
  connect() {
    alert("ok")
    createConsumer().subscriptions.create({ channel: "notification_channel" })
  }

  received(data) {
    let assistantElement = document.getElementById(`assistant-${data.id}` )
    if (assistantElement) {
      assistantElement.innerHTML = `Estado: ${data.status}`
    }
    alert(` el estado del auxiliar a cambiado` );
    location.reload
   // if (data.status) {
    //document.querySelector("#status").textContent = data.status;
   // }
  }
}


