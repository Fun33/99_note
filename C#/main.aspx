#Form
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form2());
        }

#Console
If it's a console application, only the class with the entry point is run.

static void Main(string[] args)
{
