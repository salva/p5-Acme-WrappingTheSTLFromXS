#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"
#include "acme.hpp"

using std::string;

MODULE = Acme::WrappingTheSTLFromXS		PACKAGE = Acme::WrappingTheSTLFromXS

string GiveMeAString(str, n)
  string str
  int n

int GiveMeAnInt(n)
  int n