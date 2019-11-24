macro_rules!c{()=>{"macro_rules!c{{()=>{{{1}{2}{1}}}}}{0}/*{0}    Created by Hugo MARTZOLF on 24/11/19.{0}*/{0}fn printer (){0}{{{0}    println!(c!(), 10 as char, 34 as char, c!()){0}}}{0}fn main(){0}{{{0}/*{0}    mandatory comment{0}*/{0}    printer(){0}}}"}}
/*
    Created by Hugo MARTZOLF on 24/11/19.
*/
fn printer ()
{
    println!(c!(), 10 as char, 34 as char, c!())
}
fn main()
{
/*
    mandatory comment
*/
    printer()
}
