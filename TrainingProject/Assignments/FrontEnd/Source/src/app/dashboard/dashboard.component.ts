import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { LoginserviceService } from '../services/loginservice.service';
import { ProductserviceService } from 'src/app/services/productservice.service';
import { IProduct } from '../model/product';
import { HttpErrorResponse } from '@angular/common/http';
import {  ActivatedRoute } from '@angular/router';
import { CategoryService } from 'src/app/services/category.service';
import { ICategories } from '../model/categories';
import { FormBuilder, FormControlName, FormGroup,ReactiveFormsModule,Validators,FormControl } from '@angular/forms';
import { ThisReceiver } from '@angular/compiler';
import { CompanydetailsService } from '../services/companydetails.service';
import { ICompany } from '../model/companydetails';
import { BankdetailsService } from '../services/bankdetails.service';
import { IBank } from '../model/bankdetails';
import { IAdmin } from '../model/admindetails';
import { AdmindetailsService } from '../services/admindetails.service';
@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit {
  AdminId:number=10283;
  Category:string='Covid-issential';
Product_Name:string="";
Product_Quantity:number=0;
Price:number=0;
Offer:number=0
  msg: string | undefined;
  otpSent: boolean = false
  phoneNumber = null
  otp = null

  //Company
  c:ICompany[]=[{
    id:0,
    name:'',
address:'',
gstno:'',
pan:'',
designation:'',
  }]
  com:ICompany={
    id:0,
    name:'',
address:'',
gstno:'',
pan:'',
designation:'',
  }
  companydetails: any;
  //Banketails
//   b:IBank[]=[{
//     id:0,
// bank_name:'',
// account_number:0,
// IFSC:'',
// aacount_type:''
//  }]
b!:IBank;
 bank:IBank[]=[];
 bankdetails:any;
 //Admin Details
 A:IAdmin[]=[
  {
    id:0,
    FirstName:'',
    MiddleName:'',
    LastName:''
  }
 ]
 admindetails:any;
AdminArray:any=[];
adminForm!:FormGroup;
 

  constructor(
    private category:CategoryService,
    private service: LoginserviceService,
    private routes:Router,
    private cat:CategoryService,
    private pro:ProductserviceService,
    private cd:CompanydetailsService,
    private bd:BankdetailsService,
    private ad:AdmindetailsService,
    private fb:FormBuilder) 
    { 
      this.adminForm=this.fb.group(
        {
          crud:this.fb.group({
            Category:['',Validators.required],
            Product:['',Validators.required],
            Product_Quentity:['',Validators.required],
            Product_Price:['',Validators.required],
            Offers:['',Validators.required]
          }),
          admin:this.fb.group({
            FirstName:['',Validators.required],
            MiddelName:['',Validators.required],
            LastName:['',Validators.required],
            }),
          company:this.fb.group({
            company_name:['',Validators.required],
            company_address:['',Validators.required],
            company_GSTNO:['',Validators.required],
            company_pan:['',Validators.required],
            designation:['',Validators.required]
          }),
          bank:this.fb.group({

            bank_account:['',Validators.required],
            ifsc:['',Validators.required],
           
            account_type:['',Validators.required],
          
            bank_name:['',Validators.required]
          })
           

        }
            );
        this.adminForm=new FormGroup
        (
          {
            crud:new FormGroup({

              Category:new FormControl(),
              Product:new FormControl(),
              Product_Quentity:new FormControl(),
              Product_Price:new FormControl(),
              Offers:new FormControl()
            }),
            admin:new FormGroup({
              FirstName:new FormControl(),
              MiddelName  :new FormControl(),
              LastName :new FormControl(),
             
            }),
            company:new FormGroup({
              company_name :new FormControl(),
              company_address :new FormControl(),
              company_GSTNO :new FormControl(),
              company_pan:new FormControl(),
              designation:new FormControl()
            }),
            bank:new FormGroup({
              
              bank_account :new FormControl(),
              ifsc :new FormControl(),
             
              account_type:new FormControl(),
             
              bank_name:new FormControl()
            })

                            }
                            )

    }
    submitdata() {
      debugger
      this.AdminArray.push(this.adminForm.value);
      debugger
      console.log(this.AdminArray);
      debugger
      this.AddCompany(this.adminForm.value.company);
      this.AddBank(this.adminForm.value.bank);
      this.AddAdmin(this.adminForm.value.admin);
    }
    AddCompany(company:ICompany)
  {
    debugger
    this.c=this.adminForm.value.company;
    this.cd.AddCompany(company).subscribe((res:any)=>{
      debugger
      this.c=res;

      console.log(this.c);
    });
  }
    AddBank(bankdetails:IBank){
        this.b=this.adminForm.value.bank;
        this.bd.AddBank(bankdetails)
        .subscribe((res:any) => {
          debugger
          this.b=res;
          console.log(res);
          console.log(this.b);
        })

       }
       AddAdmin(admindetails:IAdmin){
       this.A = this.adminForm.value.admin;
       this.ad.AddAdmin(admindetails).subscribe((res:any)=>{
        debugger
        this.A=res;
        console.log(res);
        console.log(this.A);
       });
      }

       Id:number=0;
       ngOnInit(){
         //   this.GetCategories();
         //   this.GetProducts();
         //  this.AddCategory();
          }
  }
  // products:IProduct []=[]
  //productsdetails:IProduct | undefined;
 
  

  // categories:ICategories[] = [
  //   {cat_Id:1,cat_Name:'test',cat_Images:''}];
  // cate:ICategories={
  //   cat_Id:0,
  //   cat_Images:'',
  //   cat_Name:''
  //   }
  //   product:IProduct= {
  //     pr_Id:1,
  //     pr_Name: 'test',
  //     pr_Discription: 'est',
  //     pr_Price: 500,
  //     pr_Image: 'test',
  //     cat_Id: 1
  //   }
  //   products:IProduct[]=[
  //     {
  //       pr_Id:1,
  //       pr_Name: 'test',
  //       pr_Discription: 'est',
  //       pr_Price: 500,
  //       pr_Image: 'test',
  //       cat_Id: 1
  //     }
  //   ]
  //   productdetail:IProduct[]=[]

  //   Catdetails:ICategories={
  //     cat_Id:0,
  //   cat_Images:'',
  //   cat_Name:''
  //   }
     
    
  // ngOnInit(){
  //   this.GetCategories();
  //   this.GetProducts();
  //  this.AddCategory();
  // }
  // check(mnumber:string)
  // {
  //   let output = this.service.checkmobilenumber(mnumber);
  //   if(output == true)
  //   {
  //     this.routes.navigate(['body']);
  //   }
  //   else{
  //     this.msg = "invalid Username and Password";
  //   }
  // }
  // GetProducts(){


  //   this.pro.GetProducts().subscribe
  //   ((res:any)=>{console.log(res);
  //     this.products=res.sort();
  //     console.log(this.products);
  //   },
  //   (err:HttpErrorResponse)=>{
  //     console.log(err.message);
  //   }
  //   )
  // }
  // Getcategory(Id:ICategories)
  // {
   
  //   this.cat.Getcategory(this.cate).subscribe((res:any)=>{
  //     console.log(res as ICategories);
  //     this.cate=res;
  //     console.log(this.cate.cat_Id)
  //   })
  // }
  // GetCategories(){

  //   this.category.GetCategories().subscribe
  //  ((res:any)=>{console.log(res);
  // this.categories = res.sort();
  //   console.log(this.categories);
  // },
  // (err:HttpErrorResponse)=>{
  //   console.log(err.message);
  // }
  // )

  // Getproducts(id:IProduct){
  //   this.pro.Getproducts(this.products).subscribe((res:any)=>{
  //     console.log(res as IProduct);
  //     this.products=res;
  //     console.log(this.products);
  //   })

  // }

  // getproductbycategory(event:any)
  // {
  //   console.log(event.target.value);
  //  }
  //  getcategorybyproduct(event:any)
  //  {
  //   console.log(event.target.value)
  //  }

  // AddCategory()
  // {
  //   debugger
  //   this.category.AddCategory(this.Catdetails).subscribe((res:any)=>{
  //     console.log(res as ICategories);
  //     this.categories.push(res);
  //     console.log(this.categories[0].cat_Id)
  //   })
  // }
  // AddProducts()
  // {
  //   debugger
  //   this.pro.AddProducts(this.productdetail[0]).subscribe((res:any)=>{
  //     console.log(res as IProduct);
  //     this.productdetail.push(res);
  //     console.log(this.productdetail[0].pr_Id)  
  //   }) 
  // }

  // Add()
  // {
  //   this.AddCategory()
  //   this.AddProducts()
  //   this.AddCompany(this.c[0]);
  //   console.log(this.Category,
  //     this.Product_Name,
  //     this.Product_Quantity,
  //     this.Price,
  //     this.Offer)
  // }
  // update()
  // {
    
  // }
  


