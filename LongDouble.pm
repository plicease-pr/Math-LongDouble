## This file generated by InlineX::C2XS (version 0.22) using Inline::C (version 0.5002)
package Math::LongDouble;
use warnings;
use strict;
use POSIX;

require Exporter;
*import = \&Exporter::import;
require DynaLoader;

use overload
  '+'     => \&_overload_add,
  '*'     => \&_overload_mul,
  '-'     => \&_overload_sub,
  '/'     => \&_overload_div,
  '**'    => \&_overload_pow,
  '+='    => \&_overload_add_eq,
  '*='    => \&_overload_mul_eq,
  '-='    => \&_overload_sub_eq,
  '/='    => \&_overload_div_eq,
  '**='   => \&_overload_pow_eq,
  '=='    => \&_overload_equiv,
  '""'    => \&_overload_string,
  '!='    => \&_overload_not_equiv,
  'bool'  => \&_overload_true,
  '!'     => \&_overload_not,
  '='     => \&_overload_copy,
  '<'     => \&_overload_lt,
  '<='    => \&_overload_lte,
  '>'     => \&_overload_gt,
  '>='    => \&_overload_gte,
  '<=>'   => \&_overload_spaceship,
  'abs'   => \&_overload_abs,
  'int'   => \&_overload_int,
  'sqrt'  => \&_overload_sqrt,
  'log'   => \&_overload_log,
  'exp'   => \&_overload_exp,
  'sin'   => \&_overload_sin,
  'cos'   => \&_overload_cos,
  'atan2' => \&_overload_atan2,
  '++'    => \&_overload_inc,
  '--'    => \&_overload_dec,
;

use subs qw(
            LD_DBL_DIG LD_LDBL_DIG LD_DBL_MANT_DIG LD_LDBL_MANT_DIG

            LD_DBL_MIN_EXP LD_DBL_MAX_EXP LD_DBL_MIN_10_EXP LD_DBL_MAX_10_EXP
            LD_DBL_MAX LD_DBL_MIN LD_DBL_EPSILON LD_DBL_DENORM_MIN

            LD_LDBL_MIN_EXP LD_LDBL_MAX_EXP LD_LDBL_MIN_10_EXP LD_LDBL_MAX_10_EXP
            LD_LDBL_MAX LD_LDBL_MIN LD_LDBL_EPSILON LD_LDBL_DENORM_MIN

            M_El M_LOG2El M_LOG10El M_LN2l M_LN10l M_PIl M_PI_2l M_PI_4l
            M_1_PIl M_2_PIl  M_2_SQRTPIl M_SQRT2l M_SQRT1_2l
            );

our $VERSION = '0.11';
#$VERSION = eval $VERSION;

DynaLoader::bootstrap Math::LongDouble $Math::LongDouble::VERSION;

@Math::LongDouble::EXPORT = ();
@Math::LongDouble::EXPORT_OK = qw(
    InfLD NaNLD ZeroLD UnityLD is_NaNLD is_InfLD is_ZeroLD STRtoLD LDtoSTR NVtoLD UVtoLD IVtoLD
    LDtoNV LDtoLD cmp_NV
    ld_set_prec ld_get_prec LDtoSTRP
    LD_DBL_DIG LD_LDBL_DIG LD_DBL_MANT_DIG LD_LDBL_MANT_DIG

    LD_DBL_MIN_EXP LD_DBL_MAX_EXP LD_DBL_MIN_10_EXP LD_DBL_MAX_10_EXP
    LD_DBL_MAX LD_DBL_MIN LD_DBL_EPSILON LD_DBL_DENORM_MIN

    LD_LDBL_MIN_EXP LD_LDBL_MAX_EXP LD_LDBL_MIN_10_EXP LD_LDBL_MAX_10_EXP
    LD_LDBL_MAX LD_LDBL_MIN LD_LDBL_EPSILON LD_LDBL_DENORM_MIN

    M_El M_LOG2El M_LOG10El M_LN2l M_LN10l M_PIl M_PI_2l M_PI_4l
    M_1_PIl M_2_PIl  M_2_SQRTPIl M_SQRT2l M_SQRT1_2l

    ld_max_orig_len ld_min_inter_prec ld_min_inter_base ld_max_orig_base ld_bytes

    llrint_LD llround_LD lrint_LD lround_LD frexp_LD nan_LD remquo_LD
    acos_LD acosh_LD asin_LD asinh_LD atan_LD atanh_LD atan2_LD cbrt_LD ceil_LD
    copysign_LD cosh_LD cos_LD erf_LD erfc_LD exp_LD expm1_LD finite_LD fabs_LD
    fdim_LD floor_LD fma_LD fmax_LD fmin_LD fmod_LD hypot_LD isinf_LD
    ilogb_LD isnan_LD ldexp_LD lgamma_LD  log_LD log10_LD
    log2_LD log1p_LD modf_LD nearbyint_LD nextafter_LD
    pow_LD remainder_LD  rint_LD round_LD scalbln_LD scalbn_LD signbit_LD
    sincos_LD sinh_LD sin_LD sqrt_LD tan_LD tanh_LD tgamma_LD trunc_LD
    );

%Math::LongDouble::EXPORT_TAGS = (all => [qw(
    InfLD NaNLD ZeroLD UnityLD is_NaNLD is_InfLD is_ZeroLD STRtoLD LDtoSTR NVtoLD UVtoLD IVtoLD
    LDtoNV LDtoLD cmp_NV
    ld_set_prec ld_get_prec LDtoSTRP
    LD_DBL_DIG LD_LDBL_DIG LD_DBL_MANT_DIG LD_LDBL_MANT_DIG

    LD_DBL_MIN_EXP LD_DBL_MAX_EXP LD_DBL_MIN_10_EXP LD_DBL_MAX_10_EXP
    LD_DBL_MAX LD_DBL_MIN LD_DBL_EPSILON LD_DBL_DENORM_MIN

    LD_LDBL_MIN_EXP LD_LDBL_MAX_EXP LD_LDBL_MIN_10_EXP LD_LDBL_MAX_10_EXP
    LD_LDBL_MAX LD_LDBL_MIN LD_LDBL_EPSILON LD_LDBL_DENORM_MIN

    M_El M_LOG2El M_LOG10El M_LN2l M_LN10l M_PIl M_PI_2l M_PI_4l
    M_1_PIl M_2_PIl  M_2_SQRTPIl M_SQRT2l M_SQRT1_2l

    ld_max_orig_len ld_min_inter_prec ld_min_inter_base ld_max_orig_base ld_bytes

    llrint_LD llround_LD lrint_LD lround_LD frexp_LD nan_LD remquo_LD
    acos_LD acosh_LD asin_LD asinh_LD atan_LD atanh_LD atan2_LD cbrt_LD ceil_LD
    copysign_LD cosh_LD cos_LD erf_LD erfc_LD exp_LD expm1_LD finite_LD fabs_LD
    fdim_LD floor_LD fma_LD fmax_LD fmin_LD fmod_LD hypot_LD isinf_LD
    ilogb_LD isnan_LD ldexp_LD lgamma_LD  log_LD log10_LD
    log2_LD log1p_LD modf_LD nearbyint_LD nextafter_LD
    pow_LD remainder_LD  rint_LD round_LD scalbln_LD scalbn_LD signbit_LD
    sincos_LD sinh_LD sin_LD sqrt_LD tan_LD tanh_LD tgamma_LD trunc_LD
    )]);

sub dl_load_flags {0} # Prevent DynaLoader from complaining and croaking

sub _overload_string {

    if(is_ZeroLD($_[0])) {
      return '-0' if is_ZeroLD($_[0]) < 0;
      return '0';
    }

    if(is_NaNLD($_[0])) {return 'NaN'}
    my $inf = is_InfLD($_[0]);
    return '-Inf' if $inf < 0;
    return 'Inf'  if $inf > 0;

    my @p = split /e/i, LDtoSTR($_[0]);
    while(substr($p[0], -1, 1) eq '0' && substr($p[0], -2, 1) ne '.') {
      chop $p[0];
    }
    return $p[0] . 'e' . $p[1];
}

sub new {

    # This function caters for 2 possibilities:
    # 1) that 'new' has been called OOP style - in which
    #    case there will be a maximum of 2 args
    # 2) that 'new' has been called as a function - in
    #    which case there will be a maximum of 1 arg.
    # If there are no args, then we just want to return a
    # Math::LongDouble object that's a NaN.

    if(!@_) {return NaNLD(1)}

    if(@_ > 2) {die "More than 2 arguments supplied to new()"}

    # If 'new' has been called OOP style, the first arg is the string
    # "Math::LongDouble" which we don't need - so let's remove it. However,
    # if the first arg is a Math::LongDouble object (which is a possibility),
    # then we'll get a fatal error when we check it for equivalence to
    # the string "Math::LongDouble". So we first need to check that it's
    # not an object - which we'll do by using the ref() function:
    if(!ref($_[0]) && $_[0] eq "Math::LongDouble") {
      shift;
      if(!@_) {return NaNLD()}
      }

    if(@_ > 1) {die "Too many arguments supplied to new() - expected no more than 1"}

    my $arg = shift;
    my $type = _itsa($arg);

    return UVtoLD ($arg) if $type == 1;    # UV
    return IVtoLD ($arg) if $type == 2;    # IV
    return NVtoLD ($arg) if $type == 3;    # NV
    return STRtoLD($arg) if $type == 4;    # PV
    return LDtoLD ($arg) if $type == 96;   # Math::LongDouble object

    die "Bad argument given to new()";
}

sub LD_DBL_DIG		{return _DBL_DIG()}
sub LD_DBL_MANT_DIG	{return _DBL_MANT_DIG()}
sub LD_DBL_MAX		{return _DBL_MAX()}
sub LD_DBL_MIN		{return _DBL_MIN()}
sub LD_DBL_EPSILON	{return _DBL_EPSILON()}
sub LD_DBL_DENORM_MIN	{return _DBL_DENORM_MIN()}
sub LD_DBL_MIN_EXP	{return _DBL_MIN_EXP()}
sub LD_DBL_MAX_EXP	{return _DBL_MAX_EXP()}
sub LD_DBL_MIN_10_EXP	{return _DBL_MIN_10_EXP()}
sub LD_DBL_MAX_10_EXP	{return _DBL_MAX_10_EXP()}

sub LD_LDBL_DIG		{return _LDBL_DIG()}
sub LD_LDBL_MANT_DIG	{return _LDBL_MANT_DIG()}
sub LD_LDBL_MAX		{return _LDBL_MAX()}
sub LD_LDBL_MIN		{return _LDBL_MIN()}
sub LD_LDBL_EPSILON	{return _LDBL_EPSILON()}
sub LD_LDBL_DENORM_MIN	{return _LDBL_DENORM_MIN()}
sub LD_LDBL_MIN_EXP	{return _LDBL_MIN_EXP()}
sub LD_LDBL_MAX_EXP	{return _LDBL_MAX_EXP()}
sub LD_LDBL_MIN_10_EXP	{return _LDBL_MIN_10_EXP()}
sub LD_LDBL_MAX_10_EXP	{return _LDBL_MAX_10_EXP()}

sub M_El		{return _M_El()}
sub M_LOG2El		{return _M_LOG2El()}
sub M_LOG10El		{return _M_LOG10El()}
sub M_LN2l		{return _M_LN2l()}
sub M_LN10l		{return _M_LN10l()}
sub M_PIl		{return _M_PIl()}
sub M_PI_2l		{return _M_PI_2l()}
sub M_PI_4l		{return _M_PI_4l()}
sub M_1_PIl		{return _M_1_PIl()}
sub M_2_PIl		{return _M_2_PIl()}
sub M_2_SQRTPIl		{return _M_2_SQRTPIl()}
sub M_SQRT2l		{return _M_SQRT2l()}
sub M_SQRT1_2l		{return _M_SQRT1_2l()}


sub ld_min_inter_prec {
    die "Wrong number of args to minimum_intermediate_prec()" if @_ != 3;
    my $orig_base = shift;
    my $orig_length = shift;
    my $to_base = shift;
    return ceil(1 + ($orig_length * log($orig_base) / log($to_base)));
}

sub ld_min_inter_base {
    die "Wrong number of args to minimum_intermediate_base()" if @_ != 3;
    my $orig_base = shift;
    my $orig_length = shift;
    my $to_prec = shift;
    return ceil(exp($orig_length * log($orig_base) / ($to_prec - 1)));
}

sub ld_max_orig_len {
    die "Wrong number of args to maximum_orig_length()" if @_ != 3;
    my $orig_base = shift;
    my $to_base = shift;
    my $to_prec = shift;
    return floor(1 / (log($orig_base) / log($to_base) / ($to_prec - 1)));
}

sub ld_max_orig_base {
    die "Wrong number of args to maximum_orig_base()" if @_ != 3;
    my $orig_length = shift;
    my $to_base = shift;
    my $to_prec = shift;
    return floor(exp(1 / ($orig_length / log($to_base) / ($to_prec -1))));
}

sub ld_bytes {
  my @ret = _ld_bytes($_[0]);
  return join '', @ret;
}

1;

__END__

=head1 NAME

Math::LongDouble - perl interface to C's long double operations


=head1 DESCRIPTION

   use Math::LongDouble qw(:all);

   $arg = ~0; # largest UV
   $d1 = Math::LongDouble->new($arg); # Assign the UV ~0 to $d2.
   $d2 = UVtoLD($arg);                # Assign the UV ~0 to $d2.

   $arg = -21;
   $d1 = Math::LongDouble->new($arg); # Assign the IV -21 to $d2.
   $d2 = IVtoLD($arg);                # Assign the IV -21 to $d2.

   $arg = 32.1;
   $d1 = Math::LongDouble->new($arg); # Assign the NV 32.1 to $d2.
   $d2 = NVtoLD($arg);                # Assign the NV 32.1 to $d2.

   $arg = "32.1";
   $d1 = Math::LongDouble->new($arg); # Assign strtold("32.1") to $d2.
   $d2 = STRtoLD($arg);               # Assign strtold("32.1") to $d2.

   $d3 = Math::LongDouble->new($d1); # Assign the value of $d1 to $d3.
   $d4 = LDtoLD($d1);                # Assign the value of $d1 to $d4.
   $d5 = $d1;                        # Assign the value of $d1 to $d5.

   This behaviour has changed from 0.06 and earlier.

   NOTE:
    Math::LongDouble->new(32.1) != Math::LongDouble->new('32.1')
    unless $Config{nvtype} reports long double. The same holds
    for many (but not all) numeric values. In general, it's not
    always true (and is often untrue) that
    Math::LongDouble->new($n) == Math::LongDouble->new("$n")


=head1 OVERLOADING

   The following operations are overloaded:
    + - * / **
    += -= *= /= **=
    != == <= >= <=> < >
    ++ --
    =
    abs bool ! int print
    sqrt log exp
    sin cos atan2

    In those situations where the overload subroutine operates on 2
    perl variables, then obviously one of those perl variables is
    a Math::LongDouble object. To determine the value of the other
    variable the subroutine works through the following steps (in
    order), using the first value it finds, or croaking if it gets
    to step 6:

    1. If the variable is a UV (unsigned integer value) then that
       value is used. The variable is considered to be a UV if
       (perl 5.8) the UOK flag is set or if (perl 5.6) SvIsUV()
       returns true.

    2. If the variable is an IV (signed integer value) then that
       value is used. The variable is considered to be an IV if the
       IOK flag is set.

    3. If the variable is an NV (floating point value) then that
       value is used. The variable is considered to be an NV if the
       NOK flag is set.

    4. If the variable is a string (ie the POK flag is set) then the
       value of that string is used.

    5. If the variable is a Math::LongDouble object then the value
       encapsulated in that object is used.

    6. If none of the above is true, then the second variable is
       deemed to be of an invalid type. The subroutine croaks with
       an appropriate error message.


=head1 ASSIGNMENT FUNCTIONS

   The following create and assign a new Math::LongDouble.

    $ld = Math::LongDouble->new($arg);
     Returns a Math::LongDouble object to which the numeric value of $arg
     has been assigned.
     If $arg is not provided then the value of $ld will be NaN.

    $ld = UVtoLD($arg);
     Returns a Math::LongDouble object to which the numeric (unsigned
     integer) value of $arg has been assigned.

    $ld = IVtoLD($arg);
     Returns a Math::LongDouble object to which the numeric (signed
     integer) value of $arg has been assigned.

    $ld = NVtoLD($arg);
     Returns a Math::LongDouble object to which the numeric (floating
     point) value of $arg has been assigned.

    $ld2 = LDtoLD($ld1);
     Returns a Math::LongDouble object that is a copy of the
     Math::LongDouble object provided as the argument.
     Courtesy of overloading, this is in effect no different to doing:
     $ld2 = $ld1;

    $ld = STRtoLD($str);
     Returns a Math::LongDouble object that has the value of the string
     $str.


=head1 ASSIGNMENT OF INF, NAN, UNITY and ZERO

   $ld = InfLD($sign);
    If $sign < 0, returns a Math::LongDouble object set to
    negative infinity; else returns a Math::LongDouble object set
    to positive infinity.

   $ld = NaNLD();
    If $sign < 0, returns a Math::longDouble object set to NaN.

   $ld = ZeroLD($sign);
    If $sign < 0, returns a Math::LongDouble object set to
    negative zero; else returns a Math::LongDouble object set to
    zero.

   $ld = UnityLD($sign);
    If $sign < 0, returns a Math::LongDouble object set to
    negative one; else returns a Math::LongDouble object set to
    one.

   ld_set_prec($precision);
    Sets the precision of stringified values to $precision decimal
    digits. Default precision is as specified by float.h's LDBL_DIG
    (or 18 if LDBL_DIG is not defined).


   $precision = ld_get_prec();
    Returns the precision (in decimal digits) that will be used
    when stringifying values (by printing them, or calling
    LDtoSTR).


=head1 ASSIGNMENT OF FLOAT.H & MATH.H CONSTANTS

   The following functions return their values as either normal
   perl scalar integer values ($iv) or Math::LongDouble objects
   ($ld), as appropriate.
   Those LD_DBL_* functions that return 'double' values could have been
   structured to return an NV, but they *do* return Math::LongDouble
   objects - mainly for consistency with their LD_LDBL_* counterparts.

    $iv = LD_DBL_DIG;
    $iv = LD_LDBL_DIG;
     Returns DBL_DIG/LDBL_DIG or croaks if DBL_DIG/LDBL_DIG is not
     defined.

    $ld = LD_DBL_MAX;
    $ld = LD_LDBL_MAX;
     Returns DBL_MAX/LDBL_MAX or croaks if DBL_MAX/LDBL_MAX is not defined.

    $ld = LD_DBL_MIN;
    $ld = LD_LDBL_MIN;
     Returns DBL_MIN/LDBL_MIN or croaks if DBL_MIN/LDBL_MIN is not defined.

    $ld = LD_DBL_EPSILON;
    $ld = LD_LDBL_EPSILON;
     Returns DBL_EPSILON/LDBL_EPSILON or croaks if
     DBL_EPSILON/LDBL_EPSILON is not defined.

    $ld = LD_DBL_DENORM_MIN;
    $ld = LD_LDBL_DENORM_MIN;
     Returns DBL_DENORM_MIN/LDBL_DENORM_MIN or croaks if
     DBL_DENORM_MIN/LDBL_DENORM_MIN is not defined.

    $iv = LD_DBL_MANT_DIG;
    $iv = LD_LDBL_MANT_DIG;
     Returns DBL_MANT_DIG/LDBL_MANT_DIG or croaks if
     DBL_MANT_DIG/LDBL_MANT_DIG is not defined.

    $iv = LD_DBL_MIN_EXP;
    $iv = LD_LDBL_MIN_EXP;
     Returns DBL_MIN_EXP/LDBL_MIN_EXP or croaks if
     DBL_MIN_EXP/LDBL_MIN_EXP is not defined.

    $iv = LD_DBL_MAX_EXP;
    $iv = LD_LDBL_MAX_EXP;
     Returns DBL_MAX_EXP/LDBL_MAX_EXP or croaks if
     DBL_MAX_EXP/LDBL_MAX_EXP is not defined.

    $iv = LD_DBL_MIN_10_EXP;
    $iv = LD_LDBL_MIN_10_EXP;
     Returns DBL_MIN_10_EXP/LDBL_MIN_10_EXP or croaks if
     DBL_MIN_10_EXP/LDBL_MIN_10_EXP is not defined.

    $iv = LD_DBL_MAX_10_EXP;
    $iv = LD_LDBL_MAX_10_EXP;
     Returns DBL_MAX_10_EXP/LDBL_MAX_10_EXP or croaks if
     DBL_MAX_10_EXP/LDBL_MAX_10_EXP is not defined.

    $ld = M_El;
     Returns M_El (e) or expl(1.0) if M_El is not defined.

    $ld = M_LOG2El;
     Returns M_LOG2El or log2l(expl(1.0)) if M_LOG2El is not
     defined.

    $ld = M_LOG10El;
     Returns M_LOG10El or log10l(expl(1.0)) if M_LOG10El is not
     defined.

    $ld = M_LN2l;
     Returns M_LN2l or logl(2) if M_LN2l is not defined.

    $ld = M_LN10l;
     Returns M_LN10l or logl(10) if M_LN10l is not defined.

    $ld = M_PIl;
     Returns M_PIl (pi) or 2 * asinl(1) if M_PIl is not defined.

    $ld = M_PI_2l;
     Returns M_PI_2l (pi/2) or asinl(1) if M_PI_2l is not defined.

    $ld = M_PI_4l;
     Returns M_PI_4l (pi/4) or asinl(1)/2 if M_PI_4l is not defined.

    $ld = M_1_PIl;
     Returns M_1_PIl (1/pi) or 0.5/asinl(1) if M_1_PIl is not
     defined.

    $ld = M_2_PIl;
     Returns M_2_PIl (2/pi) or 1/asinl(1) if M_2_PIl is not defined.

    $ld = M_2_SQRTPIl;
     Returns M_2_SQRTPIl (2/sqrt(pi)) or 2/sqrtl(pi) if M_2_SQRTPIl
     is not defined.

    $ld = M_SQRT2l;
     Returns M_SQRT2l or sqrtl(2)) if M_SQRT2l is not defined.

    $ld = M_SQRT1_2l;
     Returns M_SQRT1_2l or 1/sqrtl(2)) if M_SQRT1_2l is not defined.



=head1 RETRIEVAL FUNCTIONS

   The following functions provide ways of seeing the value of
   Math::LongDouble objects.

   $nv = LDtoNV($ld);
    This function returns the value of the Math::LongDouble object to
    a perl scalar (NV). It may not translate the value accurately.

   $string = LDtoSTR($ld);
    Returns the value of the Math::LongDouble object as a string.
    The returned string will contain the same as is displayed by
    "print $ld", except that print() will strip the trailing zeroes
    in the mantissa (significand) whereas LDtoSTR won't.
    By default, provides 18 decimal digits of precision. This can be
    altered by specifying the desired precision (in decimal digits)
    in a call to ld_set_prec.

   $string = LDtoSTRP($ld, $precision);
    Same as LDtoSTR, but takes an additional arg that specifies the
    precision (in decimal digits) of the stringified return value.

=head1 MATH LIBRARY FUNCTIONS

   With the following functions, "$rop" and "$op" are Math::LongDouble
   objects, and "$iv" is just a normal perl scalar that either
   holds a signed integer value, or to which a signed integer value
   will be returned.
   These are just interfaces to the standard math library functions.
   I'm assuming you already have access to their documentation.
   These functions do not check their argument types - if you get
   a segfault, check that you've supplied the correct argument type(s).

   acos_LD($rop, $op);
    acosl($op) is assigned to $rop.

   acosh_LD($rop, $op);
    acoshl($op) is assigned to $rop.

   asin_LD($rop, $op);
    asinl($op) is assigned to $rop.

   asinh_LD($rop, $op);
    asinhl($op) is assigned to $rop.

   atan_LD($rop, $op);
    atanl($op) is assigned to $rop.

   atanh_LD($rop, $op);
    atanhl($op) is assigned to $rop.

   atan2_LD($rop, $op1, $op2);
    atan2l($op1, $op2) is assigned to $rop.

   cbrt_LD($rop, $op);
    cbrtl($op) is assigned to $rop.

   ceil_LD($rop, $op);
    ceill($op) is assigned to $rop.

   copysign_LD($rop, $op1, $op2);
    copysignl($op1, $op2) is assigned to $rop.

   cosh_LD($rop, $op);
    coshl($op) is assigned to $rop.

   cos_LD($rop, $op);
    cosl($op) is assigned to $rop.

   erf_LD($rop, $op);
    erfl($op) is assigned to $rop.

   erfc_LD($rop, $op);
    erfcl($op) is assigned to $rop.

   exp_LD($rop, $op);
    expl($op) is assigned to $rop.

   expm1_LD($rop, $op);
    expm1l($op) is assigned to $rop.

   fabs_LD($rop, $op);
    fabsl($op) is assigned to $rop.

   fdim_LD($rop, $op1, $op2);
    fdiml($op1, $op2) is assigned to $rop.

   $iv = finite_LD($op);
    finite($op) is assigned to $iv.

   floor_LD($rop, $op);
    floorl($op) is assigned to $rop.

   fma_LD($rop, $op1, $op2, $op3);
    fmal($op1, $op2, $op3) is assigned to $rop.
    On mingw-w64 compilers, fmaq() crashes, so for those compilers
    we assign ($op1 * $op2)+$op3 to $rop.

   fmax_LD($rop, $op1, $op2);
    fmaxl($op1, $op2) is assigned to $rop.

   fmin_LD($rop, $op1, $op2);
    fmin($op1, $op2) is assigned to $rop.

   fmod_LD($rop, $op1, $op2);
    fmodl($op1, $op2) is assigned to $rop.

   frexp_LD($rop, $iv, $op);
    frexpl($op) is assigned to ($rop, $iv)

   hypot_LD($rop, $op1, $op2);
    hypotl($op1, $op2) is assigned to $rop.

   $iv = isinf_LD($op);
    isinf($op) is assigned to $iv.

   $iv = ilogb_LD($op);
    ilogbl($op) is assigned to $iv.

   $iv = isnan_LD($op);
    isnanl($op) is assigned to $iv.
    If Math::LOngDouble::_have_isnanl returns false, uses custom
    (_is_nan) XSub instead.

   ldexp_LD($rop, $op, $iv);
    ldexpl($op, $iv) is assigned to $rop.
    $iv should not contain a value that won't fit into a signed int

   lgamma_LD($rop, $op);
    lgammal($op) is assigned to $rop.

   $iv = llrint_LD($op);
    llrintl($op) is assigned to $iv.
    This requires that perl's IV is large enough to hold a longlong
    int. Otherwise attempts to use this function will result in a fatal
    error, accompanied by a message stating that the function is
    unimplemented.

   $iv = llround_LD($op);
    llroundl($op) is assigned to $rop.
    This requires that perl's IV is large enough to hold a longlong
    int. Otherwise attempts to use this function will result in a fatal
    error, accompanied by a message stating that the function is
    unimplemented.

   log_LD($rop, $op);
    logl($op) is assigned to $rop. # base e

   log10_LD($rop, $op);
    log10l($op) is assigned to $rop. # base 10

   log2_LD($rop, $op);
    log2l($op) is assigned to $rop. # base 2

   log1p_LD($rop, $op);
    log1pl($op) is assigned to $rop. # base e

   $iv = lrint_LD($op);
    lrintl($op) is assigned to $iv.
    This requires that perl's IV is large enough to hold a long int.
    Otherwise attempts to use this function will result in a fatal
    error, accompanied by a message stating that the function is
    unimplemented.

   $iv = lround_LD($op);
    lroundl($op) is assigned to $iv
    This requires that perl's IV is large enough to hold a long int.
    Otherwise attempts to use this function will result in a fatal
    error, accompanied by a message stating that the function is
    unimplemented.

   modf_LD($rop1, $rop2, $op);
    modfl($op) is assigned to ($rop1, $rop2).

   nan_LD($rop, $op);
    nanl($op) is assigned to $rop.
    If Math::LOngDouble::_have_isnanl returns false, uses custom
    (_get_nan) XSub instead. (Assumption is made that if isnanl is
    unavailable then so is nanl.)

   nearbyint_LD($rop, $op);
    nearbyintl($op) is assigned to $rop.

   nextafter_LD($rop, $op1, $op2);
    nextafterl($op1, $op2) is assigned to $rop.

   pow_LD($rop, $op1, $op2);
    pow($op1, $op2) is assigned to $rop.

   remainder_LD($rop, $op1, $op2);
    remainderl($op1, $op2) is assigned to $rop.

   remquo_LD($rop1, $rop2, $op1, $op2);
    remquol($op1, $op2) is assigned to ($rop1, $rop2).
    I find this function can return unexpected results with some
    compilers. Therefore, this function is not tested in the test suite.
    Use it at your own risk.

   $iv = rint_LD($op);
    rintl($op) is assigned to $rop.

   $iv = round_LD($op);
    roundl($op) is assigned to $iv.

   scalbln_LD($rop, $op, $iv);
    scalblnl($op, $iv) is assigned to $rop.
    $iv should not contain a value that won't fit into a signed
    long int.

   scalbn_LD($rop, $op, $iv);
    scalbnl($op, $iv) is assigned to $rop.
    $iv should not contain a value that won't fir into a signed int.

   $iv = signbit_LD($op);
    signbitl($op) is assigned to $iv.

   sincos_LD($rop1, $rop2, $op);
    sinl($op) is assigned to $rop1.
    cosl($op) is assigned to $rop2.

   sinh_LD($rop, $op);
    sinhl($op) is assigned to $rop.

   sin_LD($rop, $op);
    sin($op) is assigned to $rop.

   sqrt_LD($rop, $op);
    sqrtl($op) is assigned to $rop.

   tan_LD($rop, $op);
    tanl($op) is assigned to $rop.

   tanh_LD($rop, $op);
    tanhl($op) is assigned to $rop.

   tgamma_LD($rop, $op);
    gammal($op) is assigned to $rop.

   trunc_LD($rop, $op);
    truncl($op) is assigned to $rop.


=head1 OTHER FUNCTIONS

   $bool = is_NaNLD($ld);
    Returns 1 if $ld is a Math::LongDouble NaN.
    Else returns 0

   $int = is_InfLD($ld)
    If the Math::LongDouble object $ld is -inf, returns -1.
    If it is +inf, returns 1.
    Otherwise returns 0.

   $int = is_ZeroLD($ld);
    If the Math::LongDouble object $ld is -0, returns -1.
    If it is zero, returns 1.
    Otherwise returns 0.

   $int = cmp_NV($ld, $nv);
    $nv can be any perl number - ie NV, UV or IV.
    If the Math::LongDouble object $ld < $nv returns -1.
    If it is > $nv, returns 1.
    Otherwise returns 0.

   $hex = ld_bytes($ld);
    Returns the  hex representation of the value held by $ld as a
    string of X hex characters, where X == the size of the long
    double (in bytes) multiplied by 2.


=head1 BASE CONVERSIONS


   $min_prec = ld_min_inter_prec($orig_base, $orig_length, $to_base);
   $max_len  = ld_max_orig_len($orig_base, $to_base, $to_prec);
   $min_base = ld_min_inter_base($orig_base, $orig_length, $to_prec);
   $max_base = ld_max_orig_base($orig_length, $to_base, $to_prec);

   The last 4 of the above functions establish the relationship between
   $orig_base, $orig_length, $to_base and $to_prec.
   Given any 3 of those 4, there's a function there to determine the
   value of the 4th.

   Let's say we have some base 10 floating point numbers comprising 16
   significant digits, and we want to convert those numbers to a base 2
   data type (say, 'long double').
   If we then convert the value of that long double to a 16-digit base 10
   float are we guaranteed of getting the original value back ?
   It all depends upon the precision of the 'long double' type, and the
   min_inter_prec() subroutine will tell you what the minimum
   required precision is (in order to be sure of getting the original
   value back). We have:

    $min_prec = ld_min_inter_prec($orig_base, $orig_length, $to_base);

   In our example case that becomes:

    $min_prec = ld_min_inter_prec(10, 16, 2);

   which will set $min_prec to 55.
   That is, so long as the long double type has a precision of at least 55
   bits, you can pass 16-digit, base 10, floating point values to it and
   back again, and be assured of retrieving the original value.
   (Naturally, this is assuming absence of buggy behaviour, and correct
   rounding practice.)

   Similarly, you might like to know the maximum significant number of
   base 10 digits that can be specified, when assigning to (say) a
   53-bit double. We have:

    $max_len = ld_max_orig_len($orig_base, $to_base, $to_prec);

   For this second example that becomes:

    $max_len = ld_max_orig_len(10, 2, 53);

   which will set $max_len to 15.

   That is, so long as your base 10 float consists of no more than 15
   siginificant digits, you can pass it to a 53-bit double and back again,
   and be assured of retrieving the original value.
   (Again, we assume absence of bugs and correct rounding practice.)

   It is to be expected that
    ld_max_orig_len(10, 2, $double_prec)
    and
    ld_max_orig_len(10, 2, $long_double_prec)
   will (resp.) return the same values as LD_DBL_DIG and LD_LDBL_DIG.
   ($double_prec is the precision, in bits, of the C 'double' type,
   and $long_double_prec is the precision, in bits, of the C 'long double'
   type.)

   The last 2 of the above subroutines (ie ld_min_inter_base and
   ld_max_orig_base) are provided mainly for completeness.
   Normally, there wouldn't be a need to use these last 2 forms ... but
   who knows ...

   The above examples demonstrate usage in relation to conversion between
   bases 2 and 10. The functions apply just as well to conversions between
   bases of any values.

   The Math::MPFR module provides 4 identical functions, prefixed with
   'mpfr_' instead of 'ld_' (to avoid name clashes).
   Similarly, it provides constants (prefixed with 'MPFR_' instead of
   'LD_') that reflect the values of float.h's DBL_DIG and LDBL_DIG.


=head1 LICENSE

   This program is free software; you may redistribute it and/or modify
   it under the same terms as Perl itself.
   Copyright 2012-14, Sisyphus

=head1 AUTHOR

   Sisyphus <sisyphus at(@) cpan dot (.) org>

=cut

