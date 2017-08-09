/* os_unix.c */
int mch_chdir(char *path);
void mch_write(char_u *s, int len);
int mch_inchar(char_u *buf, int maxlen, long wtime, int tb_change_cnt);
int mch_char_avail(void);
int mch_check_messages(void);
long_u mch_total_mem(int special);
void mch_delay(long msec, int ignoreinput);
int mch_stackcheck(char *p);
void mch_startjmp(void);
void mch_endjmp(void);
void mch_didjmp(void);
void mch_suspend(void);
void mch_init(void);
void reset_signals(void);
int vim_handle_signal(int sig);
int mch_check_win(int argc, char **argv);
int mch_input_isatty(void);
int mch_can_restore_title(void);
int mch_can_restore_icon(void);
void mch_settitle(char_u *title, char_u *icon);
void mch_restore_title(int which);
int vim_is_xterm(char_u *name);
int use_xterm_like_mouse(char_u *name);
int use_xterm_mouse(void);
int vim_is_iris(char_u *name);
int vim_is_vt300(char_u *name);
int vim_is_fastterm(char_u *name);
int mch_get_user_name(char_u *s, int len);
int mch_get_uname(uid_t uid, char_u *s, int len);
void mch_get_host_name(char_u *s, int len);
long mch_get_pid(void);
int mch_dirname(char_u *buf, int len);
int mch_FullName(char_u *fname, char_u *buf, int len, int force);
int mch_isFullName(char_u *fname);
void fname_case(char_u *name, int len);
long mch_getperm(char_u *name);
int mch_setperm(char_u *name, long perm);
void mch_copy_sec(char_u *from_file, char_u *to_file);
vim_acl_T mch_get_acl(char_u *fname);
void mch_set_acl(char_u *fname, vim_acl_T aclent);
void mch_free_acl(vim_acl_T aclent);
void mch_hide(char_u *name);
int mch_isdir(char_u *name);
int mch_isrealdir(char_u *name);
int mch_can_exe(char_u *name, char_u **path, int use_path);
int mch_nodetype(char_u *name);
void mch_early_init(void);
void mch_free_mem(void);
void mch_exit(int r);
void mch_settmode(int tmode);
void get_stty(void);
void mch_setmouse(int on);
void check_mouse_termcode(void);
int mch_screenmode(char_u *arg);
int mch_get_shellsize(void);
int mch_report_winsize(int fd, int rows, int cols);
void mch_set_shellsize(void);
void mch_new_shellsize(void);
int mch_parse_cmd(char_u *cmd, int use_shcf, char ***argv, int *argc);
void may_send_sigint(int c, pid_t pid, pid_t wpid);
int mch_call_shell(char_u *cmd, int options);
void mch_job_start(char **argv, job_T *job, jobopt_T *options);
char *mch_job_status(job_T *job);
job_T *mch_detect_ended_job(job_T *job_list);
int mch_stop_job(job_T *job, char_u *how);
void mch_clear_job(job_T *job);
void mch_breakcheck(int force);
int mch_expandpath(garray_T *gap, char_u *path, int flags);
int mch_expand_wildcards(int num_pat, char_u **pat, int *num_file, char_u ***file, int flags);
int mch_has_exp_wildcard(char_u *p);
int mch_has_wildcard(char_u *p);
int mch_rename(const char *src, const char *dest);
int mch_libcall(char_u *libname, char_u *funcname, char_u *argstring, int argint, char_u **string_result, int *number_result);
void setup_term_clip(void);
void start_xterm_trace(int button);
void stop_xterm_trace(void);
void clear_xterm_clip(void);
int clip_xterm_own_selection(VimClipboard *cbd);
void clip_xterm_lose_selection(VimClipboard *cbd);
void clip_xterm_request_selection(VimClipboard *cbd);
void clip_xterm_set_selection(VimClipboard *cbd);
int xsmp_handle_requests(void);
void xsmp_init(void);
void xsmp_close(void);
/* vim: set ft=c : */
