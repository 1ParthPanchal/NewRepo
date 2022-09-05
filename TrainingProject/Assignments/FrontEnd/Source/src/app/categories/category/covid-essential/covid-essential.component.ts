import { Component, OnInit } from '@angular/core';
import { ProductserviceService } from 'src/app/services/productservice.service';
import { IProduct } from '../../../model/product';
import { HttpErrorResponse } from '@angular/common/http';
import { Router, ActivatedRoute } from '@angular/router';
import { CategoryService } from 'src/app/services/category.service';
import { ICategories } from '../../../model/categories';
@Component({
  selector: 'app-covid-essential',
  templateUrl: './covid-essential.component.html',
  styleUrls: ['./covid-essential.component.css']
})
export class CovidEssentialComponent implements OnInit {

  constructor(private cat:CategoryService,private pro:ProductserviceService,private route:ActivatedRoute) { }
  categories:ICategories[]=[];
  products: IProduct[] =[]
  productsdetails:IProduct | undefined;
  Id:number=0;
  cate:ICategories={
    cat_Id:0,
    cat_Images:'',
    cat_Name:''
    }
    prod:IProduct={
      pr_Id: 0,
      pr_Name: '',
      pr_Discription: '',
      pr_Price: 0,
      pr_Image: '',
      cat_Id: 0
    }
  ngOnInit(): void {
    this. GetCategories()
    debugger
    this.route.params.subscribe(x=>{console.log(x['id'],this.Id=x['id'])})
    debugger
    this.GetProducts()

  }

  GetCategories()
  {
                      this.cat.GetCategories().subscribe
                    ((res:any)=>{console.log(res);
                    this.categories = res.sort();
                      console.log(this.categories[0].cat_Name);}
                    // },
                    // (err:HttpErrorResponse)=>{
                    //   console.log(err.message);
                    // }
                    )
    }

    GetProducts(){

      this.pro.GetProducts().subscribe
      ((res:any)=>{console.log(res);
        this.products=res.sort();
        console.log(this.products[1].pr_Name);
      }
      )
      
    }
    // Getcategory(id:ICategories)
    // {
    //     //this.cate.cat_Id = this.products[0].pr_Id;

    //   this.cat.Getcategory(this.cate).subscribe((res:any)=>{
    //     console.log(res as ICategories);
    //     this.cate=res;
    //     console.log(this.cate);
    //   })
    // }

    Getproducts(){

  //this.categories[0].cat_Id == this.prod.pr_Id

      this.pro.Getproducts(this.prod).subscribe((res:any)=>{
        console.log(res as IProduct);
        this.prod=res;
        console.log(this.prod.pr_Discription);

      
      })

    }

}
