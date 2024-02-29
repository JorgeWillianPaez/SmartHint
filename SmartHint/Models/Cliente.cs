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
        public int Telefone { get; set; }
        [Required(ErrorMessage = "Campo obrigatório")]
        public string TipoPessoa { get; set; } = string.Empty;
        [Required(ErrorMessage = "Campo obrigatório")]
        public int CPFCNPJ { get; set; }
        public int InscricaoEstadual { get; set; }
        public bool Isento { get; set; } = false;
        [Required(ErrorMessage = "Campo obrigatório")]
        public string Genero { get; set; } = string.Empty;
        public DateTime DataNascimento {  get; set; }
        public bool Bloqueado { get; set; } = false;
        [Required(ErrorMessage = "Campo obrigatório")]
        //[MinLength(11, ErrorMessage = "Mínimo 8 caracteres")]
        //[MaxLength(15, ErrorMessage = "Máximo 15 caracteres")]
        public string Senha { get; set; } = string.Empty;
        [Required(ErrorMessage = "Campo obrigatório")]
        [Compare("Senha", ErrorMessage = "As senhas não conferem")]
        [NotMapped]
        public string ConfirmarSenha { get; set; } = string.Empty;
        public DateTime DataCadastro { get; set; }
    }
}
