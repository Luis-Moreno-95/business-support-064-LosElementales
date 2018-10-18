import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { UserServiceProvider } from '../../providers/user-service/user-service';
import { Storage } from '@ionic/storage';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {

  usuario: any = [];
  constructor(
    public navCtrl: NavController,
    public UserServiceProvider : UserServiceProvider, 
    private storage: Storage) {

  }

  ionViewDidLoad(){
    this.UserServiceProvider.getUsuarioPorId()
    .subscribe(
      (data) => {
        this.usuario = data;
        console.log(this.usuario);
        this.storage.set('puntaje_usuario', this.usuario.puntaje_usuario );
      },
      (error) =>{
        console.error(error);
      }
    )
  }

}
