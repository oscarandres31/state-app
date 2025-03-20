import consumer from "channels/consumer"

consumer.subscriptions.create("NotificationChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("conectado");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    let assistantElement = document.getElementById(`assistant-${data.id}` )
    if (assistantElement) {
      assistantElement.innerHTML = `Estado: ${data.state_aux_id}`
    }
    location.reload
    alert(` el estado del auxiliar a cambiado a uno nuevo` );
  }
});
