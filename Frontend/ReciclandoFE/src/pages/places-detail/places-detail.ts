import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { Storage } from '@ionic/storage';

/**
 * Generated class for the PlacesDetailPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-places-detail',
  templateUrl: 'places-detail.html',
})
export class PlacesDetailPage {

  placeInfo: any;

  constructor(public navCtrl: NavController, public navParams: NavParams, private storage: Storage) {
    this.placeInfo = this.navParams.data;
  }

  ionViewDidLoad() {
    console.log(this.placeInfo.id);
    this.storage.get('nickname').then((val) => {
      console.log('Your nickname is: ', val);
    });
    this.storage.get('puntaje_usuario').then((val)=>{
      console.log('Puntos usuario', val);
    });
  }

}
