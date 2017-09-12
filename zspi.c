#include <linux/module.h>  
//on pc you should use "tail -f /var/log/messages " to see the result  
static int __init zzz_init(void)  
{  
    printk("Hello, module is installed !\n");  
    return 0;  
}  
  
static void __exit zzz_exit(void)  
{  
    printk("Good-bye, module was removed!\n");  
}  
  
module_init(zzz_init);  
module_exit(zzz_exit);  
MODULE_LICENSE("GPL");  
