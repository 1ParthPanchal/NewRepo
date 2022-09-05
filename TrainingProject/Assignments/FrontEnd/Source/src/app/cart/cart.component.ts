import { Component, OnInit } from '@angular/core';
import { ProductserviceService } from 'src/app/services/productservice.service';
import { IProduct } from '.././model/product';
import { HttpErrorResponse } from '@angular/common/http';
import { OrderServiceService } from '.././services/order-service.service';
import { IOrder } from '.././model/order';
import { CartserviceService } from '../services/cartservice.service';
import { Icart } from '../model/cart';
import { AppRoutingModule } from '../app-routing.module';
import { ActivatedRoute } from '@angular/router';
@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.css']
})
export class CartComponent implements OnInit {
  
 updateName() {
// this.username.setValue('Nancy');
}
UserName:string='';
Email:string='';
Address:string='';
  isEnable:boolean=true;
  Orders:IOrder[]=[];
  Quantity:number=1;
  constructor(private pro:ProductserviceService,private ord:OrderServiceService,private cart:CartserviceService,private route:ActivatedRoute) { }
  products:IProduct[] = [];
  productsdetails:IProduct | undefined;
    Id:number=0;

  selectedLevel : any;
  carrt:Icart={
    c_Id: 0,
    off_Id1: 0,
    o_details: '',
    pr_Id: 0,
    o_quantity: 0
  }
caart:Icart[]=[]


  // productsdetails:IProduct;
  
  Ordertails:IOrder={o_Id:0,
    o_Details:'',
    o_quantity:0,
    Pr_Id:0,
    Off_Id:0
    };
  // selectedLevel : any;



  ngOnInit(): void {
  this.GetOrders();
    this.GetProducts()
    console.log(this.Orders);
    this.GetCart();
    this.DeleteCart();
    this.route.params.subscribe(x=>{console.log(x['id'],this.Id=x['id'])})
  }
  
    GetProducts(){

      // this.products[0].pr_Id=this.Orders[0].Pr_Id;
      this.pro.GetProducts().subscribe
        ((res:any)=>{console.log(res);;
        this.products=res.sort();
        console.log(this.products[0].pr_Name);
        

      },
      (err:HttpErrorResponse)=>{
        console.log(err.message);
      }
      )

    }
    GetOrders()
    {
      this.ord.GetOrders().subscribe((res:any)=>{console.log(res); this.Orders=res;console.log(this.Orders)})
    }

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
    GetCart()
    {

      this.cart.GetCart().subscribe((res:any)=>{
        console.log(res as Icart);
        this.caart=res;
        console.log(this.caart);
      })
    }
    DeleteCart(){
    this.carrt.c_Id=this.caart[0].c_Id;
      // this.Ordertails.o_Id= this.carrt.c_Id;
      this.cart.DeleteCart(this.carrt).subscribe((res:any)=>{
        console.log(res as Icart);
        this.carrt=res;
        console.log(this.carrt);
      })
    }

    Displaydetails(){
      console.log(this.Address,this.UserName, this.Email);
    }

    
}
