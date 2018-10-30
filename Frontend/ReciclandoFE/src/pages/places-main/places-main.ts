import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { PlacesMainServiceProvider } from '../../providers/places-main-service/places-main-service';
import { UserServiceProvider } from '../../providers/user-service/user-service';
import { Storage } from '@ionic/storage';

/**
 * Generated class for the PlacesMainPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-places-main',
  templateUrl: 'places-main.html',
})
export class PlacesMainPage {

  places: any;
  user:any;
  nickname: any;
  userToken: any;

  constructor(public navCtrl: NavController, 
    public navParams: NavParams, 
    public PlacesMainServiceProvider: PlacesMainServiceProvider,
    public UserServiceProvider: UserServiceProvider,
    public storage: Storage) {
  }

  ionViewDidLoad() {
    //console.log('ionViewDidLoad PlacesMainPage');
    this.storage.get('nickname').then((val)=>{
      console.log('el nickname', val);
      this.nickname = val;
    });


    this.PlacesMainServiceProvider.getPlaces()
    .subscribe(
      (data)=> {
        this.places = data;
        console.log(this.places)
      },
      (error)=> {
        console.error(error);
      }
    )
  }

  itemClicked(item):void{
 
    this.navCtrl.push('PlacesDetailPage', item);

    this.storage.get('token').then((val)=>{
      this.userToken = val;

      this.UserServiceProvider.getUserByNickname(this.nickname, this.userToken)
      .subscribe(
        (data)=>{
          this.user = data;         
        },
        (error)=>{
          console.log(error);
        }
      );

    });


  }

}
