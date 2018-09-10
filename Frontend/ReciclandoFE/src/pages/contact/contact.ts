import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { ContentServiceProvider } from '../../providers/content-service/content-service';
import { UserServiceProvider } from '../../providers/user-service/user-service';

@Component({
  selector: 'page-contact',
  templateUrl: 'contact.html'
})
export class ContactPage {

  contenido: any = [];
  usuario: any = [];
  constructor(
    public navCtrl: NavController,
    public ContentServiceProvider : ContentServiceProvider,
    public UserServiceProvider : UserServiceProvider) { }


  ionViewDidLoad(){
    this.ContentServiceProvider.getContenidoPorId()
    .subscribe(
      (data) => {
        this.contenido = data;
        console.log(this.contenido);
      },
      (error) =>{
        console.error(error);
      }
    )

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
