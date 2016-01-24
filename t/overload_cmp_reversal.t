use strict;
use warnings;
use Math::LongDouble qw(:all);

print "1..13\n";

my $uv = ~0;
my $iv = -21;
my $nv = -17.1;
my $str = "-17.1";
my $strp = "17.1";
my $obj = Math::LongDouble->new(19.0);
my $nan = LDtoNV(Math::LongDouble->new());

my $zero = ZeroLD(-1);
my $one = UnityLD(1);
my $div;
my $ok = '';

# !=

$div = Math::LongDouble->new($uv) - 1;
if($uv != $div) {$ok .= 'a'}
else {warn "\n1a: ", $div, "\n"}

$div = Math::LongDouble->new($iv) + 0.1;
if($iv != $div) {$ok .= 'b'}
else {warn "\n1b: ", $div, "\n"}

$div = Math::LongDouble->new($nv) + 0.1;
if($nv != $div) {$ok .= 'c'}
else {warn "\n1c: ", $div, "\n"}

$div = Math::LongDouble->new("$str") + 0.1;
if("$str" != $div) {$ok .= 'd'}
else {warn "\n1d: ", $div, "\n"}

$div = Math::LongDouble->new($obj) + 0.1;
if($obj != $div) {$ok .= 'e'}
else {warn "\n1e: ", $div, "\n"}

unless($nan == $div) {$ok .= 'f'}
else {warn "\n1f: ", $div == $nan, "\n"}

if($nan != $div) {$ok .= 'g'}
else {warn "\n1g: ", $div != $nan, "\n"}

if($ok eq 'abcdefg') {print "ok 1\n"}
else {
  warn "\n\$ok: $ok\n";
  print "not ok 1\n";
}

$ok = '';

#############

# >=

$div = Math::LongDouble->new($uv) - 0.1;
if($uv >= $div) {$ok .= 'a'}
else {warn "\n2a: ", $div, "\n"}

$div = Math::LongDouble->new($iv) - 0.1;
if($iv >= $div) {$ok .= 'b'}
else {warn "\n2b: ", $div, "\n"}

$div = Math::LongDouble->new($nv) - 0.1;
if($nv >= $div) {$ok .= 'c'}
else {warn "\n2c: ", $div, "\n"}

$div = Math::LongDouble->new("$str") - 0.1;
if("$str" >= $div) {$ok .= 'd'}
else {warn "\n2d: ", $div, "\n"}

$div = Math::LongDouble->new($obj) - 0.1;
if($obj >= $div) {$ok .= 'e'}
else {warn "\n2e: ", $div, "\n"}

if($ok eq 'abcde') {print "ok 2\n"}
else {
  warn "\n\$ok: $ok\n";
  print "not ok 2\n";
}

$ok = '';

#############

# >=

$div = Math::LongDouble->new($uv);
if($uv >= $div) {$ok .= 'a'}
else {warn "\n3a: ", $div, "\n"}

$div = Math::LongDouble->new($iv);
if($iv >= $div) {$ok .= 'b'}
else {warn "\n3b: ", $div, "\n"}

$div = Math::LongDouble->new($nv);
if($nv >= $div) {$ok .= 'c'}
else {warn "\n3c: ", $div, "\n"}

$div = Math::LongDouble->new("$str");
if("$str" >= $div) {$ok .= 'd'}
else {warn "\n3d: ", $div, "\n"}

$div = Math::LongDouble->new($obj);
if($obj >= $div) {$ok .= 'e'}
else {warn "\n3e: ", $div, "\n"}

unless($nan >= $div) {$ok .= 'f'}
else {warn "\n3f: ", $div <= $nan, "\n"}

if($ok eq 'abcdef') {print "ok 3\n"}
else {
  warn "\n\$ok: $ok\n";
  print "not ok 3\n";
}

$ok = '';

#############

# >

$div = Math::LongDouble->new($uv) - 1;
if($uv > $div) {$ok .= 'a'}
else {warn "\n4a: ", $div, "\n"}

$div = Math::LongDouble->new($iv) - 0.1;
if($iv > $div) {$ok .= 'b'}
else {warn "\n4b: ", $div, "\n"}

$div = Math::LongDouble->new($nv) - 0.1;
if($nv > $div) {$ok .= 'c'}
else {warn "\n4c: ", $div, "\n"}

$div = Math::LongDouble->new("$str") - 0.1;
if("$str" > $div) {$ok .= 'd'}
else {warn "\n4d: ", $div, "\n"}

$div = Math::LongDouble->new($obj) - 0.1;
if($obj > $div) {$ok .= 'e'}
else {warn "\n4e: ", $div, "\n"}

unless($nan > $div) {$ok .= 'f'}
else {warn "\n4f: ", $div < $nan, "\n"}

if($ok eq 'abcdef') {print "ok 4\n"}
else {
  warn "\n\$ok: $ok\n";
  print "not ok 4\n";
}

$ok = '';

#############

# <=

$div = Math::LongDouble->new($uv) + 0.1;
if($uv <= $div) {$ok .= 'a'}
else {warn "\n5a: ", $div, "\n"}

$div = Math::LongDouble->new($iv) + 0.1;
if($iv <= $div) {$ok .= 'b'}
else {warn "\n5b: ", $div, "\n"}

$div = Math::LongDouble->new($nv) + 0.1;
if($nv <= $div) {$ok .= 'c'}
else {warn "\n5c: ", $div, "\n"}

$div = Math::LongDouble->new("$str") + 0.1;
if("$str" <= $div) {$ok .= 'd'}
else {warn "\n5d: ", $div, "\n"}

$div = Math::LongDouble->new($obj) + 0.1;
if($obj <= $div) {$ok .= 'e'}
else {warn "\n5e: ", $div, "\n"}

if($ok eq 'abcde') {print "ok 5\n"}
else {
  warn "\n\$ok: $ok\n";
  print "not ok 5\n";
}

$ok = '';

#############

# <=

$div = Math::LongDouble->new($uv);
if($uv <= $div) {$ok .= 'a'}
else {warn "\n6a: ", $div, "\n"}

$div = Math::LongDouble->new($iv);
if($iv <= $div) {$ok .= 'b'}
else {warn "\n6b: ", $div, "\n"}

$div = Math::LongDouble->new($nv);
if($nv <= $div) {$ok .= 'c'}
else {warn "\n6c: ", $div, "\n"}

$div = Math::LongDouble->new("$str");
if("$str" <= $div) {$ok .= 'd'}
else {warn "\n6d: ", $div, "\n"}

$div = Math::LongDouble->new($obj);
if($obj <= $div) {$ok .= 'e'}
else {warn "\n6e: ", $div, "\n"}

unless($nan <= $div) {$ok .= 'f'}
else {warn "\n6f: ", $div >= $nan, "\n"}

if($ok eq 'abcdef') {print "ok 6\n"}
else {
  warn "\n\$ok: $ok\n";
  print "not ok 6\n";
}

$ok = '';

#############

# <

$div = Math::LongDouble->new($uv) + 1;
if($uv < $div) {$ok .= 'a'}
else {warn "\n7a: ", $div, "\n"}

$div = Math::LongDouble->new($iv) + 0.1;
if($iv < $div) {$ok .= 'b'}
else {warn "\n7b: ", $div, "\n"}

$div = Math::LongDouble->new($nv) + 0.1;
if($nv < $div) {$ok .= 'c'}
else {warn "\n7c: ", $div, "\n"}

$div = Math::LongDouble->new("$str") + 0.1;
if("$str" < $div) {$ok .= 'd'}
else {warn "\n7d: ", $div, "\n"}

$div = Math::LongDouble->new($obj) + 0.1;
if($obj < $div) {$ok .= 'e'}
else {warn "\n7e: ", $div, "\n"}

unless($nan < $div) {$ok .= 'f'}
else {warn "\n7f: ", $div > $nan, "\n"}

if($ok eq 'abcdef') {print "ok 7\n"}
else {
  warn "\n\$ok: $ok\n";
  print "not ok 7\n";
}

$ok = '';

#############

# <=>

$div = Math::LongDouble->new($uv) + 1;
if(($uv <=> $div) < 0) {$ok .= 'a'}
else {warn "\n8a: ", $div, "\n"}

$div = Math::LongDouble->new($iv) + 0.1;
if(($iv <=> $div) < 0) {$ok .= 'b'}
else {warn "\n8b: ", $div, "\n"}

$div = Math::LongDouble->new($nv) + 0.1;
if(($nv <=> $div) < 0) {$ok .= 'c'}
else {warn "\n8c: ", $div, "\n"}

$div = Math::LongDouble->new("$str") + 0.1;
if(("$str" <=> $div) < 0) {$ok .= 'd'}
else {warn "\n8d: ", $div, "\n"}

$div = Math::LongDouble->new($obj) + 0.1;
if(($obj <=> $div) < 0) {$ok .= 'e'}
else {warn "\n8e: ", $div, "\n"}

if($ok eq 'abcde') {print "ok 8\n"}
else {
  warn "\n\$ok: $ok\n";
  print "not ok 8\n";
}

$ok = '';

#############

# <=>

$div = Math::LongDouble->new($uv) - 1;
if(($uv <=> $div) > 0) {$ok .= 'a'}
else {warn "\n9a: ", $div, "\n"}

$div = Math::LongDouble->new($iv) - 0.1;
if(($iv <=> $div) > 0) {$ok .= 'b'}
else {warn "\n9b: ", $div, "\n"}

$div = Math::LongDouble->new($nv) - 0.1;
if(($nv <=> $div) > 0) {$ok .= 'c'}
else {warn "\n9c: ", $div, "\n"}

$div = Math::LongDouble->new("$str") - 0.1;
if(("$str" <=> $div) > 0) {$ok .= 'd'}
else {warn "\n9d: ", $div, "\n"}

$div = Math::LongDouble->new($obj) - 0.1;
if(($obj <=> $div) > 0) {$ok .= 'e'}
else {warn "\n9e: ", $div, "\n"}

if($ok eq 'abcde') {print "ok 9\n"}
else {
  warn "\n\$ok: $ok\n";
  print "not ok 9\n";
}

$ok = '';

#############

# <=>

$div = Math::LongDouble->new($uv);
if(defined($uv <=> $div) && ($uv <=> $div) == 0) {$ok .= 'a'}
else {warn "\n10a: ", $div, "\n"}

$div = Math::LongDouble->new($iv);
if(defined($iv <=> $div) && ($iv <=> $div) == 0) {$ok .= 'b'}
else {warn "\n10b: ", $div, "\n"}

$div = Math::LongDouble->new($nv);
if(defined($nv <=> $div) && ($nv <=> $div) == 0) {$ok .= 'c'}
else {warn "\n10c: ", $div, "\n"}

$div = Math::LongDouble->new("$str");
if(defined("$str" <=> $div) && ("$str" <=> $div) == 0) {$ok .= 'd'}
else {warn "\n10d: ", $div, "\n"}

$div = Math::LongDouble->new($obj);
if(defined($obj <=> $div) && ($obj <=> $div) == 0) {$ok .= 'e'}
else {warn "\n10e: ", $div, "\n"}

if(!defined($nan <=> $div)) {$ok .= 'f'}
else {warn "\n10f: ", $nan <=> $div, "\n"}


if($ok eq 'abcdef') {print "ok 10\n"}
else {
  warn "\n\$ok: $ok\n";
  print "not ok 10\n";
}

$ok = '';

#############

# <=>

if(!defined($uv <=> NaNLD())) {$ok .= 'a'}
else {warn "\n11a: ", NaNLD() <=> $uv, "\n"}

if(!defined($iv <=> NaNLD())) {$ok .= 'b'}
else {warn "\n11b: ", NaNLD() <=> $iv, "\n"}

if(!defined($nv <=> NaNLD())) {$ok .= 'c'}
else {warn "\n11c: ", NaNLD() <=> $nv, "\n"}

if(!defined("$str" <=> NaNLD())) {$ok .= 'd'}
else {warn "\n11d: ", NaNLD() <=> "$str", "\n"}

if(!defined($obj <=> NaNLD())) {$ok .= 'e'}
else {warn "\n11e: ", NaNLD() <=> $obj, "\n"}

if($ok eq 'abcde') {print "ok 11\n"}
else {
  warn "\n\$ok: $ok\n";
  print "not ok 11\n";
}

$ok = '';

#############

if($nan != $nan) {print "ok 12\n"}
else {
  warn "\$nan: $nan\n";
  print "not ok 12\n";
}

if(Math::LongDouble::_nan_pow_bug()) {
  warn "\n Skip test 23 - nan**0 is miscalculated by this compiler/libc\n";
  print "ok 13\n";
}
else {
  if($nan ** ZeroLD(1) == 1) {print "ok 13\n"}
  else {
    warn "\n13: ", $nan ** ZeroLD(1), "\n";
    print "not ok 13\n";
  }
}

#############




