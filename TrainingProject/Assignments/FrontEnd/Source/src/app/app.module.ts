import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { Ng2SearchPipeModule } from 'ng2-search-filter';
import {FormsModule,ReactiveFormsModule} from '@angular/forms';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { FooterComponent } from './footer/footer.component';
import { HeaderComponent } from './header/header.component';
import { BodyComponent } from './body/body.component';
import { LoginComponent } from './login/login.component';
import { DashboardComponent } from './dashboard/dashboard.component';
import { CartComponent } from './cart/cart.component';
import { CategoriesComponent } from './categories/categories.component';
import { PostComponent } from './post/post.component';
import { UsersComponent } from './users/users.component';

// import { NgOtpInputModule } from 'ng-otp-input';
import { OffersComponent } from './offers/offers.component';
import { HttpClientModule } from '@angular/common/http';
import { CovidEssentialComponent } from './categories/category/covid-essential/covid-essential.component';
import {DragDropModule} from '@angular/cdk/drag-drop';
import {ScrollingModule} from '@angular/cdk/scrolling';
import {CdkTableModule} from '@angular/cdk/table';
import {CdkTreeModule} from '@angular/cdk/tree';

import  firebase from '.././../node_modules/firebase/compat/app';
// import '../../node_modules/firebase/compat/auth';
// import '../../node_modules/firebase/compat/firestore';
 //import * as firebase from 'firebase';
// import * as firebase '.././node_modules/firebase/compat/firestore'
//import * as firebase from  '../../node_modules/firebase/compat';
import { CategoryService } from './services/category.service';

// import { CovidEssentialComponent } from './categories/covid-essential/covid-essential.component';
import { PpeKitComponent } from './categories/category/covid-essential/ppe-kit/ppe-kit.component';

import { CategoryRoutingModule } from './categories/category-routing.module';
import { CategoriesModule } from '../app/categories/categories.module';
import { CategoryComponent } from './categories/category/category.component';
const firebaseConfig = {
  apiKey: "AIzaSyAOJj7knhfEPX-Ux52xUrLfs0KThUTOcXs",
  authDomain: "pharmeasy-f4ffe.firebaseapp.com",
  projectId: "pharmeasy-f4ffe",
  storageBucket: "pharmeasy-f4ffe.appspot.com",
  messagingSenderId: "740336809372",
  appId: "1:740336809372:web:0d5395410191cd3702c459",
  measurementId: "G-YNQW4GYJQV"
};
firebase.initializeApp(firebaseConfig);
// const app = initializeApp(firebaseConfig);
// const analytics = getAnalytics(app);
// const auth = firebase.default.auth();
// const database = firebase.default.database();
@NgModule({
  declarations: [
    AppComponent,
    FooterComponent,
    HeaderComponent,
    BodyComponent,
    LoginComponent,
    DashboardComponent,
    CartComponent,
    CategoriesComponent,
    PostComponent,
    UsersComponent,
    OffersComponent,
    CovidEssentialComponent,
    CategoryComponent,
    CovidEssentialComponent,
    PpeKitComponent,

  
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule,
    Ng2SearchPipeModule,
    DragDropModule,
ScrollingModule,
CdkTableModule,
CdkTreeModule,
CategoryRoutingModule,
CategoriesModule
  ],
  providers: [CategoryService],
  bootstrap: [AppComponent]
})
export class AppModule { }
// function initializeApp(firebaseConfig: { apiKey: string; authDomain: string; projectId: string; storageBucket: string; messagingSenderId: string; appId: string; measurementId: string; }) {
//   throw new Error('Function not implemented.');
// }

// function getAnalytics(app: void) {
//   throw new Error('Function not implemented.');
// }

