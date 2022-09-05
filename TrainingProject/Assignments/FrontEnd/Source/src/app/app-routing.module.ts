import { NgModule, Component } from '@angular/core';
import {RouterModule,Routes}  from '@angular/router'
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { BodyComponent } from './body/body.component';
import { CartComponent } from './cart/cart.component';
import { DashboardComponent } from './dashboard/dashboard.component';
import { CategoriesComponent } from './categories/categories.component';
import { PostComponent } from './post/post.component';
import { UsersComponent } from './users/users.component';
import { combineLatestInit } from 'rxjs/internal/observable/combineLatest';
import { OffersComponent } from './offers/offers.component';
import { PageNotFoundComponent } from './page-not-found/page-not-found.component';

// import { CovidEssentialComponent } from './categories/covid-essential/covid-essential.component';
import { CategoryComponent } from './categories/category/category.component';
import { PpeKitComponent } from './categories/category/covid-essential/ppe-kit/ppe-kit.component';
import { LoginauthGuard } from './loginauth.guard';


import { CategoriesModule } from '../app/categories/categories.module';
import { CovidEssentialComponent } from './categories/category/covid-essential/covid-essential.component';
// import { RouterModule, Routes } from '@angular/router';
const routes: Routes = [
  {path:'', 
  redirectTo : 'body', 
  pathMatch:'full'},
  { 
    path: 'header', 
    component: HeaderComponent 
  },
  { 
    path: 'footer',
    component: FooterComponent 
  },
  { 
    path: 'body',
    component: BodyComponent 
  },
  { 
    path: 'cart',
    component: CartComponent 
  },
  { 
    path: 'user',
    component: UsersComponent 
  },
  { 
    path: 'dashboard',
    component: DashboardComponent ,
   // canActivate:[LoginauthGuard]
  },
  { 
    path: 'post',
    component: PostComponent 
  },
  { 
    path: 'categories',
    component:CategoriesComponent ,

   
    children: [
      {
        path:"category",
        component:CategoryComponent
      },
      {
        path: ':id', // child route path
        component: CovidEssentialComponent, // child route component that the router renders
      },
     {
      path :':id/:id',
      component:PpeKitComponent
     },
    //  {
    //   path:'categories/category',
    //   component:CategoryComponent
    //  }
      
    ],

  },
  // {
  //   path:":id",
  //   loadChildren: () => import('../app/categories/categories.module').then(m=>m.CategoriesModule)
  // },
  // {
  //   path:'categories/:id',
  //    loadChildren: () => import('../app/categories/categories.module').then(m=>m.CategoriesModule)
  // },

  // {
  //   path:"categories/:id",
  //   component:CovidEssentialComponent,

  // },
  // {
  //   path:":id",
  //   component:PpeKitComponent
  // },
  // {
  //   path:"covidessential",
  //   component:PpeKitComponent
  // },
  // {
  //   path:"covidessential/:id",
  //   component:PpeKitComponent
  // },

  { 
      path: 'offers', 
      component: OffersComponent 
  },
  
  {
    path:"**",
    component:PageNotFoundComponent
  }
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, {
     
    }),
    
  ],
  exports: [RouterModule],
})
export class AppRoutingModule {}
