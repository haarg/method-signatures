use MooseX::Declare;
use Method::Signatures::Modifiers;

class MXD_MSM
{

    method doit (Int :$count, Str :$msg)
    {
        open(OUT, '>/dev/null') or die("can't open output");
        for (1..$count)
        {
            print OUT "$msg\n" for 1..10;
        }
        close(OUT);
    }

};


1;
