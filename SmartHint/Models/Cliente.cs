using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Globalization;

namespace SmartHint.Models
{
    public class Cliente
    {
        public int Id { get; set; }
        [Required(ErrorMessage = "Campo obrigatório")]
        [MaxLength(150, ErrorMessage = "Máximo de 150 caracteres")]
        public string NomeClienteRazaoSocial { get; set; } = string.Empty;
        [Required(ErrorMessage = "Campo obrigatório")]
        [MaxLength(150, ErrorMessage = "Máximo de 150 caracteres")]
        [EmailAddress(ErrorMessage = "O endereço de e-mail não é válido")]
        public string Email { get; set; } = string.Empty;
        [Required(ErrorMessage = "Campo obrigatório")]
        [StringLength(14, MinimumLength = 13, ErrorMessage = "O campo deve conter entre no mínimo 10 e no máximo 11 caracteres.")]
        public string Telefone { get; set; } = string.Empty;
        [Required(ErrorMessage = "Campo obrigatório")]
        public string TipoPessoa { get; set; } = string.Empty;
        [Required(ErrorMessage = "Campo obrigatório")]
        //[RegularExpression(@"^\d{14}(?:\d{6})?$", ErrorMessage = "Campo deve conter 11 ou 15 dígitos.")]
        public string CPFCNPJ { get; set; } = string.Empty;
        public string InscricaoEstadual { get; set; } = string.Empty;
        public bool Isento { get; set; } = false;
        public string Genero { get; set; } = string.Empty;
        public DateTime? DataNascimento { get; set; } = null;
        public bool Bloqueado { get; set; } = false;
        [Required(ErrorMessage = "Campo obrigatório")]
        [StringLength(15, MinimumLength = 8, ErrorMessage = "O campo deve conter entre no mínimo 8 e no máximo 15 caracteres.")]
        public string Senha { get; set; } = string.Empty;
        [Required(ErrorMessage = "Campo obrigatório")]
        [Compare("Senha", ErrorMessage = "As senhas não conferem")]
        [NotMapped]
        public string ConfirmarSenha { get; set; } = string.Empty;
        public DateTime DataCadastro { get; set; }
    }
}
