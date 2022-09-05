import { NgModule, Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { CovidEssentialComponent } from './category/covid-essential/covid-essential.component';
import { AppRoutingModule } from '../app-routing.module';
import { Routes, RouterModule } from '@angular/router';
import { OffersComponent } from '../offers/offers.component';
import { PpeKitComponent } from './category/covid-essential/ppe-kit/ppe-kit.component';
const routes: Routes =[
  {
    path:"categories",
    redirectTo:"categories",
    pathMatch:'full'
  }
  // {path:'', 
  // redirectTo : 'body', 
  // pathMatch:'full'},
  // {
  //   path:":id",
  //   component:CovidEssentialComponent
  // },
  // {
  //   path:"categories/categories/:id/:id/Offers",
  //   component:OffersComponent
  // },
  // {
  //   path:"ppekit",
  //   component:PpeKitComponent
  // }
]
@NgModule({
  declarations: [
   
  ],
  imports: [
    CommonModule,
    RouterModule.forRoot(routes)
  
  ]
})
export class CategoryRoutingModule { }
