<?php

namespace CodeDelivery\Http\Middleware;

use Closure;
use CodeDelivery\Entities\User;
use Illuminate\Support\Facades\Auth;

class CheckRole
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
        echo "RODOU O MIDDLEWARE</br>";
        if(!Auth::check()){
            echo "CHECKADO";
            return redirect('/login');
        }

        if(Auth::user()->role <> "admin"){
            return redirect('/login');
        }
        return $next($request);
    }
}
