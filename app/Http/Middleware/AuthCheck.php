<?php

namespace App\Http\Middleware;

use Closure;
use Session;
use Auth;
class AuthCheck
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(Auth::check()){
           if(Auth::user()->user_type == 6){ 
             return $next($request);
          } 
        }
       
        else{
             return redirect('/');
        }  
    }
}
