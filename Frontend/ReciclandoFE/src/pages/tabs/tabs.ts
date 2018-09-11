import { Component } from '@angular/core';

import { AboutPage } from '../about/about';
import { ContactPage } from '../contact/contact';
import { HomePage } from '../home/home';
import { PlacesMainPage } from '../places-main/places-main';
import { LoginPage } from '../login/login';




@Component({
  templateUrl: 'tabs.html'
})
export class TabsPage {

  tab5Root = LoginPage;
  tab1Root = HomePage;
  tab2Root = AboutPage;
  tab3Root = ContactPage;
  tab4Root = PlacesMainPage;

  constructor() {

  }
}
