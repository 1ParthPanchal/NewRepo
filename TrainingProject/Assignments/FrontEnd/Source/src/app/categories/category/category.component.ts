import { Component, OnInit } from '@angular/core';
import { CategoryService } from '../../services/category.service';
import { ICategories } from '../../model/categories';
import { HttpErrorResponse } from '@angular/common/http';
import { ActivatedRoute } from '@angular/router';
@Component({
  selector: 'app-category',
  templateUrl: './category.component.html',
  styleUrls: ['./category.component.css']
})
export class CategoryComponent implements OnInit {

  Id:number=0
  constructor(private category:CategoryService,private route: ActivatedRoute) { }
  categories:ICategories[] = [];
  categoriesdetails:ICategories | undefined;
cat:ICategories={
  cat_Id: 0,
  cat_Images: '',
  cat_Name: ''

}
  ngOnInit(): void {
    debugger
    this.GetCategories();
    debugger
    this.Getcategory(this.cat);
    this.route.params.subscribe(x=>{console.log(x['id'],this.Id=x['id'])})
  }
  GetCategories()
  {
                      this.category.GetCategories().subscribe
                    ((res:any)=>{console.log(res);
                    this.categories = res.sort();
                      console.log(this.categories[0].cat_Id);}
                    // },
                    // (err:HttpErrorResponse)=>{
                    //   console.log(err.message);
                    // }
                    )
    }
    Getcategory(id:ICategories)
    {
      debugger
     // this.cat.cat_Id = this.categories[0].cat_Id;
        this.category.Getcategory(this.cat).subscribe((res:any)=>{
        console.log(res as ICategories);
        this.categories=res;
        console.log(this.categories[1].cat_Name);
      });
      
    }

}
