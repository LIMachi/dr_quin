macro_rules!c{()=>{"macro_rules!c{{()=>{{{1}{2}{1}}}}}{0}macro_rules!i{{()=>{{use std::fs::File;use std::io::Write;}}}}{0}macro_rules!m{{()=>{{i!();fn main()->std::io::Result<()>{{let mut f=File::create({1}Grace_kid.rs{1})?;let w=format!(c!(),10 as char,34 as char,c!());f.write(w.as_bytes())?;Ok(())}}}}}}{0}m!();{0}"}}
macro_rules!i{()=>{use std::fs::File;use std::io::Write;}}
macro_rules!m{()=>{i!();fn main()->std::io::Result<()>{let mut f=File::create("Grace_kid.rs")?;let w=format!(c!(),10 as char,34 as char,c!());f.write(w.as_bytes())?;Ok(())}}}
m!();
