import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { UserServiceProvider } from '../../providers/user-service/user-service';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {

  usuario: any = [];
  constructor(
    public navCtrl: NavController,
     public UserServiceProvider : UserServiceProvider) {

  }

  ionViewDidLoad(){
    this.UserServiceProvider.getUsuarioPorId()
    .subscribe(
      (data) => {
        this.usuario = data;
        console.log(this.usuario);
      },
      (error) =>{
        console.error(error);
      }
    )
  }

}
