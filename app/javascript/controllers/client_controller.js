import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {

  }

  showUsers(event){
    const dashboard = document.querySelector("#home-metrics");
    const userSection = document.querySelector("#user-section");
    event.preventDefault();
    dashboard.classList.add('d-none');
    userSection.classList.remove('d-none')
    userSection.classList.add('here');
    if (document.querySelector("#house-section").classList.contains('here')) document.querySelector("#house-section").classList.add('d-none');
  }

  createHouses(e){
    const dashboard = document.querySelector("#home-metrics");
    const houseSection = document.querySelector('#house-section');
    e.preventDefault();
    dashboard.classList.add('d-none');
    houseSection.classList.remove('d-none');
    houseSection.classList.add('here');
    if (document.querySelector("#user-section").classList.contains('here')) document.querySelector("#user-section").classList.add('d-none');
  }
}
