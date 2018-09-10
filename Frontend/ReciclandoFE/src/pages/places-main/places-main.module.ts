import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { PlacesMainPage } from './places-main';

@NgModule({
  declarations: [
    PlacesMainPage,
  ],
  imports: [
    IonicPageModule.forChild(PlacesMainPage),
  ],
})
export class PlacesMainPageModule {}
