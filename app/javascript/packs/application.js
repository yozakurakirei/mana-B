// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("jquery")

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'bootstrap';
import '@fortawesome/fontawesome-free/js/all';
import '../css/application.scss'
import '../css/tailwind.css'
import 'select2';  
import 'select2/dist/css/select2.css';
import '../js/select'
import dt from "datatables.net";

document.addEventListener("turbolinks:load", () => {
  dt(window, $);
})

global.$ = jQuery;



Rails.start()
// Turbolinks.start()
ActiveStorage.start()


