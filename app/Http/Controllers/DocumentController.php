<?php

namespace App\Http\Controllers;

use App\Models\Document;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class DocumentController extends Controller
{
    /**
     * Display a listing of the resource.
     * afficher tous
     * 
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        


        $documents = Document::select()->paginate(5);
        return view('document.liste' , ['documents' => $documents]);
    }

    /**
     * Show the form for creating a new resource.
     * afficher le formulaire pour créer un doc
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('document.index');
    }

    /**
     * Store a newly created resource in storage.
     * saisir un nouveau doc
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
//     public function store(Request $request)
//     {
//         //
//         $request->validate([

//             'document' => 'required|mimes:jpg,pdf,zip|max:2048',
//             'titre' => 'required|unique:documents',
//             'titre_fr' => 'required|unique:documents',

//         ]);
//         $document = $request->document;
// //dd($document);

//         $Documentname=$request->titre.'.'.$document->getClientOriginalExtension();
//         $request->document->storeAs('public/uploads',$Documentname);

//         //$request->document = $Documentname;
        
       
//         $newDocument = Document::create([

//             'titre' => $request->titre,
//             'titre_fr' => $request->titre_fr,
//             'document' => $request->document,
//             'user_id' => $request->user_id,
             
//         ]); 

        
//         return redirect(route('create.document'))->with('message', 'IT WORKS!');
//     }


public function store(Request $request)
{
    $request->validate([
        'document' => 'required|mimes:jpg,pdf,zip|max:2048',
        'titre' => 'required|unique:documents',
        'titre_fr' => 'required|unique:documents',
    ]);
    
    $document = $request->document;
    $extension = $document->getClientOriginalExtension(); // получить расширение файла
    
    $Documentname = $request->titre . '.' . $extension; // использовать правильное имя файла
    
    $request->document->storeAs('public/uploads', $Documentname);
    
    $newDocument = Document::create([
        'titre' => $request->titre,
        'titre_fr' => $request->titre_fr,
        'document' => $Documentname, // сохраняем имя файла вместе с расширением
        'user_id' => $request->user_id,
    ]); 

    return redirect(route('create.document'))->with('message', 'IT WORKS!');
}

    /**
     * Display the specified resource.
     * afficher un doc
     *
     * @param  \App\Models\Document  $document
     * @return \Illuminate\Http\Response
     */
    public function show(Document $document)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     * afficher le formulaire pour modifier
     *
     * @param  \App\Models\Document  $document
     * @return \Illuminate\Http\Response
     */
    public function edit(Document $document)
    {
        //
        return view('document.edit' , ['document' => $document]);
    }

    /**
     * Update the specified resource in storage.
     * enregistrer le document modifié
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Document  $document
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        //
        $request->validate([
            
            'titre' => 'required|unique:documents',
            'titre_fr' => 'required|unique:documents',

        ]);
        $document = Document::find($id);

        $document->update([

            'titre' => $request->titre,
            'titre_fr' => $request->titre_fr,
             
        ]);

        return view('document.index');
    }

    /**
     * Remove the specified resource from storage.
     * supprimer un document
     *
     * @param  \App\Models\Document  $document
     * @return \Illuminate\Http\Response
     */
    public function destroy(Document $document)
    {
        //
        $document->delete();
        return redirect(route('document.liste'));
    }


    /**
     * 
     */
    // public function downloadFile(Request $request) 
    //  {
    //      //dd( $request);
    //      echo  $request ; exit;
    //     $path = storage_path('app/public/uploads/');
    //      return response()->download(public_path($path . $request));
    //  }

//     public function downloadFile($filename)
// { 
    
//     $path = storage_path('app/public/uploads/' . $filename);
    
//     echo  $path ; exit;

//     //Log::info('File path: ' . $path);
//     return Response::download($path, $filename);
// }
public function downloadFile($filename)
{ 
    $path = storage_path('app/public/uploads/' . $filename);
    $extension = pathinfo($path, PATHINFO_EXTENSION); // получить расширение файла из полного пути
    //echo  $extension ; exit;
    return response()->download($path, $filename, [], 'inline')->setContentDisposition('inline; filename="'.$filename.'.'.$extension.'"');
}


}
// timestamp