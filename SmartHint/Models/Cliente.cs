namespace SmartHint.Models
{
    public class Cliente
    {
        public int Id { get; set; }
        public string NomeClienteRazaoSocial { get; set; } = string.Empty;
        public string Email { get; set; } = string.Empty;
        public string Telefone { get; set; } = string.Empty;
        public string TipoPessoa { get; set; } = string.Empty;
        public string CPFCNPJ { get; set; } = string.Empty;
        public string InscricaoEstadual { get; set; } = string.Empty;
        public bool Isento { get; set; } = false;
        public string Genero { get; set; } = string.Empty;
        public bool Bloqueado { get; set; } = false;
        public string Senha { get; set; } = string.Empty;
    }
}
