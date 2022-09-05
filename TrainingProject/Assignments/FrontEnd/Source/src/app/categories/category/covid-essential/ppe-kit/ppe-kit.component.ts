import { Component, OnInit } from '@angular/core';

import { ProductserviceService } from 'src/app/services/productservice.service';
import { IProduct } from '../../../../model/product';
import { HttpErrorResponse } from '@angular/common/http';
import { OrderServiceService } from '../../../../services/order-service.service';
import { IOrder } from '../../../../model/order';
import { CartserviceService } from 'src/app/services/cartservice.service';
import { Icart } from 'src/app/model/cart';
import { CategoryService } from 'src/app/services/category.service';
import { ICategories } from '../../../../model/categories';
import { OffersService } from '../../../../services/offers.service';
import {IOffers} from '../../../../model/offers';


import { ActivatedRoute } from '@angular/router';
import { Observable } from 'rxjs/internal/Observable';
import { data } from 'jquery';

@Component({
  selector: 'app-ppe-kit',
  templateUrl: './ppe-kit.component.html',
  styleUrls: ['./ppe-kit.component.css']
})
export class PpeKitComponent implements OnInit {

  isEnable:boolean=true;
  Orders:IOrder[]=[];
  Quantity:number=1;
  constructor(private pro:ProductserviceService,private ord:OrderServiceService,private offer:OffersService,private route: ActivatedRoute,private crt:CartserviceService) { }
  products:IProduct[]=[];
  productsdetails:IProduct[]=[{
    pr_Id: 0,
    pr_Discription: '',
    pr_Name: '',
    pr_Price: 0,
    pr_Image: '',
    cat_Id: 0
  }];
  offers:IOffers[] = [];
  offersdetails : IOffers | undefined;

  Ordertails:IOrder={o_Id:0,
    o_Details:'',
    o_quantity:0,
    Pr_Id:0,
    Off_Id:0
    };
  selectedLevel : any;
  Id:number=0;
  carrt:Icart={
    c_Id: 0,
    off_Id1: 0,
    o_details: '',
    pr_Id: 0,
    o_quantity: 0
  }
caart:Icart[]=[]

  

  // productsdetails:IProduct | undefined;
  






  ngOnInit(): void {
debugger
this.route.params.subscribe(x=>{console.log(x['id'],this.Id=x['id'])})

  
    this.GetProducts()
    console.log(this.Orders);
    this.GetOffers();


    // this.Getproducts()
    console.log(this.Ordertails);
  }

  
    GetProducts(){

//this.productsdetails[0].pr_Id=this.products[0].pr_Id;
const pr_id = +this.route.snapshot.paramMap.get('id')!;
      this.pro.GetProducts()
      .subscribe(
        (res:any)=>
        {
        console.log(res);
        this.productsdetails=res.sort();
        console.log(this.productsdetails);
        console.log(this.productsdetails[0].pr_Discription)
      // },
      // (err:HttpErrorResponse)=>{
      //   console.log(err.message);
        }
      )
      
    }


    GetOffers(){
      //this.offers[0].Off_Id=this.products[0].pr_Id;
      this.offer.GetOffers().subscribe
     ((res:any)=>{console.log(res);
    this.offers = res.sort();
      console.log(this.offers[0].off_Discription);
      console.log(this.offers[1].off_Code);
    },
    // (err:HttpErrorResponse)=>{
    //   console.log(err.message);
    // }
    )
      }


      Getproducts()
      {
        const pr_id = +this.route.snapshot.paramMap.get('id')!;
       // this.productsdetails[0].pr_Id=this.products[0].pr_Id;

        this.pro.Getproducts( pr_id as unknown as IProduct).subscribe((res:any)=>{
          console.log(res as IProduct);
          this.productsdetails=res.sort();
          console.log(this.productsdetails);
        })
      }

      // Getproducts()
      // {
      //   //this.productsdetails.pr_Id=this.products[0].pr_Id;

      //   this.pro.Getproducts(this.productsdetails).subscribe((res:any)=>{
      //     console.log(res as IProduct);
      //     this.productsdetails=res.sort();
      //     console.log(this.productsdetails.pr_Id);
      //   })
      // }
    // AddOrder()
    // {
    //   this.ord.AddOrder(this.OrderDetails)
      
      
      
    // }
   
   AddOrder(){
       
        this.Ordertails.o_Details =this.products[0].pr_Discription;
        this.Ordertails.Pr_Id = this.products[0].pr_Id;
        debugger
        this.Ordertails.o_quantity = this.Quantity;
      
        this.ord.AddOrder(this.Ordertails).subscribe((res:any)=>{
          console.log(res as IOrder);
          this.Orders=res;
          console.log(this.Orders)
        })
      }

    // SetQuntity(event:any){
    //   debugger
    //   console.log(event.av);
    // }
      AddtoCart(){
        this.caart[0].c_Id=this.products[0].pr_Id;
        this.crt.AddtoCart(this.carrt).subscribe((res:any)=>{
          console.log(res as Icart);
          this.caart=res;
          console.log(this.caart[0].c_Id);
        })
      }

}
