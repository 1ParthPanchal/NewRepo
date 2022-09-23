import { Component, OnInit } from '@angular/core';
import { FormGroup,FormControl,FormBuilder, Validators } from '@angular/forms';
import { IPrd } from '../Models/prmodel';
import { ProductService } from '../Services/product.service';

@Component({
  selector: 'app-product-details-form',
  templateUrl: './product-details-form.component.html',
  styleUrls: ['./product-details-form.component.css']
})
export class ProductDetailsFormComponent implements OnInit {
ProductForm!:FormGroup;
prdarray: any = [];
Prud:IPrd[]=[];
ProdD:IPrd={
  id: 0,
  name: '',
  price: 0,
  sku: 0,
  width: 0,
  height: 0,
  weight: 0,
  icon: '',
  image: ''
}
A!:IPrd;
  constructor(private pr:ProductService,private fb:FormBuilder) {
    this.ProductForm = this.fb.group({
      pname:['',Validators.required],
      pcategory:['',Validators.required],
      pprice:['',Validators.required],
      psku:['',Validators.required],
      prdwh:['',Validators.required],
      prdw:['',Validators.required],
      prdicon:['',Validators.required],
      prdimg:['',Validators.required]

    })

   }


  ngOnInit(): void {
    this.Get();
    debugger
    console.log(this.Prud[1]);
  }

  submitdata()
  {
    this.prdarray.push(this.ProductForm.value);
    console.log(this.prdarray);
    console.log(this.ProductForm);
    this.Add(this.ProductForm.value);
  }

  Get()
  {
    this.pr.Get().subscribe((res:any)=>{console.log(res);
    this.Prud = res;
    console.log(this.Prud[0].price);
    })
  }
  get pname() {return this.ProductForm.get('pname') as FormControl}
  get pcategory() {return this.ProductForm.get('pcategory') as FormControl}
  get pprice() {return this.ProductForm.get('pprice') as FormControl}
  get psku() {return this.ProductForm.get('psku') as FormControl}
  get prdwh() {return this.ProductForm.get('prdwh') as FormControl}
  get prdw() {return this.ProductForm.get('prdw') as FormControl}
  get prdicon() {return this.ProductForm.get('prdicon') as FormControl}
  get prdimg() {return this.ProductForm.get('prdimg') as FormControl}

Add(Prud:IPrd)
{
  this.pr.Add(Prud).subscribe((res:any)=>{
    this.A= this.ProductForm.value
    console.log(res as IPrd);
    this.Prud=res;
    console.log(this.Prud);
    console.log(this.A);
})

}
}

function prd(prd: any) {
  throw new Error('Function not implemented.');
}
