import { Component, OnInit } from '@angular/core';
import { CategoryService } from '../services/category.service';
import { ICategories } from '../model/categories';
import { HttpErrorResponse } from '@angular/common/http';
@Component({
  selector: 'app-post',
  templateUrl: './post.component.html',
  styleUrls: ['./post.component.css']
})
export class PostComponent implements OnInit {

  constructor(private category:CategoryService) { }
  categories:ICategories[] = [];
  categoriesdetails:ICategories | undefined;

  ngOnInit(): void {
    this.GetCategories();
  }
  GetCategories(){
    this.category.GetCategories().subscribe
   ((res:any)=>{console.log(res);
  this.categories = res.sort();
    console.log(this.categories[0].cat_Name);
  },
  (err:HttpErrorResponse)=>{
    console.log(err.message);
  }
  )
    }
}
