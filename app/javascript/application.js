// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import Rails from "@rails/ujs";
Rails.start();

import "@hotwired/turbo-rails";
import "./src/submenu";
import "controllers";
import "channels";
import "bootstrap";
import  submenu from "./submenu";
//= require rails-ujs
document.addEventListener('DOMContentLoaded', () => {
  console.log("Rails UJS funcionando:", !!Rails);  // Verifica si Rails UJS está cargado
});
