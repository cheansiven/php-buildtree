<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;
use App\Http\Requests;
use App\Category;
use Excel;
use File;
use DB;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $category = Category::all();
        $category = $category->toArray();
        $category = $this->buildTree($category);
        //get sub categories of each category
        foreach ($category as $c){
            $categories[] = $c;
        }
        return view('welcome')->with('categories', $categories);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('import-data');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      if($request->hasFile('file')){
            Excel::load($request->file('file')->getRealPath(), function ($reader) {
                if(!empty($reader) && $reader->count()){
                  foreach ($reader->toArray() as $key => $row) {

                        if($row['1'] != NULL) {
                            $subCat[1] = Category::create([
                                'id' => $row['no'],
                                'name' => $row['1']
                            ]);
                            // loop to insert child of category
                            for($i=2; $i<8 ;$i++){
                                // check if name is not null insert child of category
                                if($row[$i]!= null){
                                  $subCat[$i] = $this->getChild($row[$i], $subCat[$i-1]->id);
                                }
                            }
                        }
                  }
                }
            });
            return view('import-data');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    function buildTree(array $elements, $parentId = 0) {
      $branch = array();
      foreach ($elements as $element) {
          if ($element['parent_id'] == $parentId) {
              $children = $this->buildTree($elements, $element['id']);
              if ($children) {
                  $element['children'] = $children;
              }
              $branch[] = $element;
          }
      }
      return $branch;
    }

    function getChild($name, $parentId) {
        $insertData = Category::create([
            'name' => $name,
            'parent_id' => $parentId
        ]);
        return $insertData;
    }
}
