#! /bin/bash

to_lower()
  case $1 in
    A*) _LWR=a ;; B*) _LWR=b ;; C*) _LWR=c ;; D*) _LWR=d ;;
    E*) _LWR=e ;; F*) _LWR=f ;; G*) _LWR=g ;; H*) _LWR=h ;;
    I*) _LWR=i ;; J*) _LWR=j ;; K*) _LWR=k ;; L*) _LWR=l ;;
    M*) _LWR=m ;; N*) _LWR=n ;; O*) _LWR=o ;; P*) _LWR=p ;;
    Q*) _LWR=q ;; R*) _LWR=r ;; S*) _LWR=s ;; T*) _LWR=t ;;
    U*) _LWR=u ;; V*) _LWR=v ;; W*) _LWR=w ;; X*) _LWR=x ;;
    Y*) _LWR=y ;; Z*) _LWR=z ;;  *) _LWR=${1%${1#?}} ;;
  esac
