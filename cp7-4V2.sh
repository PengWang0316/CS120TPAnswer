#! /bin/bash
ltrim() {
  [[ $1 =~ ^' '*([a-z,A-Z])(.*) ]]
  echo "${BASH_REMATCH[1]}""${BASH_REMATCH[2]}"
}

rtrim() {
  [[ $1 =~ ^(' '*)(.*)([a-z,A-Z])' '*$ ]]
  echo "${BASH_REMATCH[1]}""${BASH_REMATCH[2]}""${BASH_REMATCH[3]}"
}
