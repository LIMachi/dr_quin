macro_rules!c{()=>{"macro_rules!c{{()=>{{{1}{2}{1}}}}}{0}use std::path::Path;{0}use std::fs::File;{0}use std::io::Write;{0}use std::process::Command;{0}fn main()->std::io::Result<()>{0}{{{0}    let mut i = {3};{0}    let mut n = format!({1}Sully_{{}}.rs{1}, i);{0}    if Path::new(n.as_str()).exists() {{i -= 1;}}{0}    if i < 0 {{return Ok(());}}{0}    n = format!({1}Sully_{{}}.rs{1}, i);{0}    let mut f = File::create(n.as_str())?;{0}    let b = format!(c!(), 10 as char, 34 as char, c!(), i);{0}    f.write(b.as_bytes())?;{0}    f.sync_all()?;{0}    n = format!({1}rustc Sully_{{0}}.rs -o Sully_{{0}} && ./Sully_{{0}}{1}, i);{0}    Command::new({1}sh{1}).arg({1}-c{1}).arg(n.as_str()).output()?;{0}    Ok(()){0}}}{0}"}}
use std::path::Path;
use std::fs::File;
use std::io::Write;
use std::process::Command;
fn main()->std::io::Result<()>
{
    let mut i = 5;
    let mut n = format!("Sully_{}.rs", i);
    if Path::new(n.as_str()).exists() {i -= 1;}
    if i < 0 {return Ok(());}
    n = format!("Sully_{}.rs", i);
    let mut f = File::create(n.as_str())?;
    let b = format!(c!(), 10 as char, 34 as char, c!(), i);
    f.write(b.as_bytes())?;
    f.sync_all()?;
    n = format!("rustc Sully_{0}.rs -o Sully_{0} && ./Sully_{0}", i);
    Command::new("sh").arg("-c").arg(n.as_str()).output()?;
    Ok(())
}
