//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Carcas
{
    using System;
    using System.Collections.Generic;
    
    public partial class UserTest
    {
        public int Id_UserTest { get; set; }
        public Nullable<int> Id_Test_FK_ { get; set; }
        public Nullable<int> Id_User_FK_ { get; set; }
    
        public virtual Test Test { get; set; }
        public virtual User User { get; set; }
    }
}
