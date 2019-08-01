#! /bin/bash
to_lower()
    case $1 in
        A*) LOR=a ;; B*) LOR=b ;; C*) LOR=c ;; D*) LOR=d ;;
        E*) LOR=e ;; F*) LOR=f ;; G*) LOR=g ;; H*) LOR=h ;;
        I*) LOR=i ;; J*) LOR=j ;; K*) LOR=k ;; L*) LOR=l ;;
        M*) LOR=m ;; N*) LOR=n ;; O*) LOR=o ;; P*) LOR=p ;;
        Q*) LOR=q ;; R*) LOR=r ;; S*) LOR=s ;; T*) LOR=t ;;
        U*) LOR=u ;; V*) LOR=v ;; W*) LOR=w ;; X*) LOR=x ;;
        Y*) LOR=y ;; Z*) LOR=z ;;  *) LOR=${1%${1#?}} ;;
    esac

# The code below can help test the function
word=FUNCTION
to_lower "$word"
printf "%c%s\n" "$LOR" "${word#?}"
